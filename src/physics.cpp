/*
   Copyright (c) 2011, The Mineserver Project
   All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:
  * Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
  * Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
  * Neither the name of the The Mineserver Project nor the
    names of its contributors may be used to endorse or promote products
    derived from this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE FOR ANY
  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#include "physics.h"
#include "logger.h"
#include "constants.h"
#include "mineserver.h"
#include "map.h"
#include <sstream>

namespace
{

inline bool isWaterBlock(int id)
{
  return ((id == BLOCK_WATER) || (id == BLOCK_STATIONARY_WATER));
}

inline bool isLavaBlock(int id)
{
  return ((id == BLOCK_LAVA) || (id == BLOCK_STATIONARY_LAVA));
}

inline bool isLiquidBlock(int id)
{
  return ((id == BLOCK_LAVA) || (id == BLOCK_STATIONARY_LAVA) || (id == BLOCK_WATER) || (id == BLOCK_STATIONARY_WATER));
}

inline bool mayFallThrough(int id)
{
  return ((id == BLOCK_AIR) || (id == BLOCK_WATER) || (id == BLOCK_STATIONARY_WATER) || (id == BLOCK_SNOW));
}
}
void Physics::getBlocksAround(vec pos, vec vectors[], uint8_t around[5][2]) 
{
	vec tmpVectors[6] = {vec(0, -1, 0), vec(1, 0, 0), vec(-1, 0, 0), vec(0, 0, 1), vec(0, 0, -1), vec(0, 1, 0)}; 
	for (int i = 0; i < 6; i++)
	{
		vectors[i] = pos + tmpVectors[i];
		Mineserver::get()->map(map)->getBlock(vectors[i], &around[i][0], &around[i][1]);
	}
}		
bool Physics::updateFluid(uint32_t simIt) 
{
	//Get Pos    
	vec pos = simList[simIt].blocks[0].pos;
	//Render the block?
	bool render = simList[simIt].blocks[0].render;
	//Meta -> High of water    
	uint8_t block, meta;
   Mineserver::get()->map(map)->getBlock(pos, &block, &meta);
	
	if(render)
	{
		uint8_t around[5][2];
		vec vectors[6];
		getBlocksAround(pos, vectors, around);
		//If there nothing water higher than self, delete
		if(meta > 0 && !((around[1][0] == block && around[1][1] < meta ) || (around[2][0] == block && around[2][1] < meta) || (around[3][0] == block && around[3][1] < meta) || (around[4][0] == block && around[4][1] < meta) || (around[5][0] == block && around[5][1] < 8 ))) 
			{
			removeSimulation(pos);
			Mineserver::get()->map(map)->setBlock(pos, BLOCK_AIR, 0);

			for(int i = 0; i < 5; i ++) 
			{
				addSimulation(vectors[i]);
			}
		}
		//else if(meta == 1 && (((around[1][0] == block && around[1][1] == 0 ) && (around[3][0] == block && around[3][1] == 0)) || 										 ((around[2][0] == block && around[2][1] == 0 ) && (around[4][0] == block && around[4][1] == 0)) ||
										 //((around[1][0] == block && around[1][1] == 0 ) && (around[2][0] == block && around[2][1] == 0)) ||
										 //((around[3][0] == block && around[3][1] == 0 ) && (around[4][0] == block && around[4][1] == 0)) ||
										 //((around[1][0] == block && around[1][1] == 0 ) && (around[4][0] == block && around[4][1] == 0)) ||
										 //((around[2][0] == block && around[2][1] == 0 ) && (around[3][0] == block && around[3][1] == 0)) ||
										//around[5][0] == block && around[5][1] == 1 ))) 
		//{
			//Mineserver::get()->map(map)->setBlock(pos, block , 0);
		//}
		//Try to flow down
		else if(around[0][0] == BLOCK_AIR) 
		{
			Mineserver::get()->map(map)->setBlock(vectors[0], block, 1);
			addSimulation(vectors[0]);		
		}
		//Try to flow site
		else if(meta < 7 && around[0][0] != block && around[0][0] != block && (around[1][0] == BLOCK_AIR || around[2][0] == BLOCK_AIR || around[3][0] == BLOCK_AIR || around[4][0] == BLOCK_AIR)) 
		{					
			for (int i = 1; i < 5; i++)
			{
				if(around[i][0] == BLOCK_AIR) 
				{
					Mineserver::get()->map(map)->setBlock(vectors[i], block , meta + 1);
					addSimulation(vectors[i]);
				}	
			}
		}	
		//Nothing to do, dont rendering
		else 
		{
			simList[simIt].blocks[0].render = false;
		}
	}
}
// Physics loop
bool Physics::update()
{
	
  if (!enabled)
  {
    return true;
  }

  // Check if needs to be updated
  if (simList.empty())
  {
    return true;
  }

  std::set<vec> changed;

	//if(this->lasttime == NULL) this->lasttime = 0;
  clock_t diffTime = clock() - lasttime;

  LOG(INFO, "Physics", "Simulating " + dtos(simList.size()) + " items!");

  uint32_t listSize = simList.size();

  for (uint32_t simIt = 0; simIt < listSize; simIt++)
  {
		//Get Pos    
		vec pos = simList[simIt].blocks[0].pos;
		//Render the block?
		bool render = simList[simIt].blocks[0].render;
		//Meta -> High of water    
		uint8_t block, meta;
    Mineserver::get()->map(map)->getBlock(pos, &block, &meta);

    if (!isLiquidBlock(block))
    {
			LOG(INFO, "WATER", "Remove block");
      removeSimulation(pos);

			uint8_t around[5][2];
			vec vectors[6];
			getBlocksAround(pos, vectors, around);
			for(int i = 0; i < 5; i ++) 
			{
				addSimulation(vectors[i]);
			}
      break;
    }
		if(isWaterBlock(block) || diffTime > 4000)
		{
			updateFluid(simIt);
			changed.insert(pos);
		}
  }	

  Mineserver::get()->map(map)->sendMultiBlocks(changed);

	lasttime = clock();
  //clock_t endtime = clock() - starttime;
  //  LOG(INFO, "Physics", "Exit simulation, took " + dtos(endtime * 1000 / CLOCKS_PER_SEC) + " ms, " + dtos(simList.size()) + " items left");
	
  return true;
}

// Add world simulation
bool Physics::addSimulation(vec pos)
{
  if (!enabled)
  {
    return true;
  }

  uint8_t block;
  uint8_t meta;
  Mineserver::get()->map(map)->getBlock(pos, &block, &meta);

  // Dont add duplicates
  for (std::vector<Sim>::iterator simIt = simList.begin(); simIt != simList.end(); simIt++)
  {
    vec itpos = simIt->blocks[0].pos;

    if (itpos.x() == pos.x() && itpos.y() == pos.y() && itpos.z() == pos.z())
    {
			simIt->blocks[0].render = true;
      return true;
    }
  }

	  SimBlock simulationBlock(block, pos, meta, true);
  // Simulating water
  if (isWaterBlock(block))
  {
    simList.push_back(Sim(TYPE_WATER, simulationBlock));
    return true;
  }
  // Simulating lava
  else if (isLavaBlock(block))
  {
    simList.push_back(Sim(TYPE_LAVA, simulationBlock));
    return true;
  }

  return false;
}

bool Physics::removeSimulation(vec pos)
{
  if (!enabled)
  {
    return true;
  }

  // Iterate each simulation
  for (std::vector<Sim>::iterator simIt = simList.begin(); simIt != simList.end(); simIt++)
  {
    vec itpos = simIt->blocks[0].pos;
    if (itpos.x() == pos.x() && itpos.y() == pos.y() && itpos.z() == pos.z())
    {
      simList.erase(simIt);
      return true;
    }
  }
  return false;
}


bool Physics::checkSurrounding(vec pos)
{
  if (!enabled)
  {
    return true;
  }

  uint8_t block;
  uint8_t meta;

  for (int i = 0; i < 6; i++)
  {
    vec local(pos);
    switch (i)
    {
    case 0:
      local += vec(0,  1,  0);
      break;

    case 1:
      local += vec(1,  0,  0);
      break;

    case 2:
      local += vec(-1,  0,  0);
      break;

    case 3:
      local += vec(0,  0,  1);
      break;

    case 4:
      local += vec(0,  0, -1);
      break;

    case 5:
      local += vec(0, -1,  0);
      break;
    }

    //Add liquid blocks to simulation if they are affected by breaking a block
    if (Mineserver::get()->map(map)->getBlock(local, &block, &meta) &&
        isLiquidBlock(block))
    {
      addSimulation(local);
    }
  }

  return true;
}
