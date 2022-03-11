#!/usr/bin/env bash

# cd master_tags/DiFX-x.x.x
# get the original SHA1 of this master_tags

# git log .  > logs.txt # get the full log 
# or 
# git log --oneline . > logs-oneline.txt  # get the SHA1 

# Grab the oldest SHA1
# take DiFX-2.7 for example
git branch -b D270 f239d96d21ce7c1f6f4a9c7e5ebfc2557bf5961a

# then cherry-pick all the commits in logs-oneline # in reverse mode 
git cherry-pick 82fbe4134 325f4ae2a 4e78e61fa 6a2aa225b 4ec08c0c0 12dffa5cb 34ebe0184 fad564902 6a785ddf1 12104dbba b29e454c4 ef7e82ee1 620e39ba5 ac7f03e82 30922d6d1 0fc36b11f b137b267b 31e144865 f00835094 335399514 22d0c8871 2e8061665 ad9dc8633 79a5a3f59 1848615fd cea9f1650 be25cb402 9355a5ca4 a0f8559a8 cd2443843 96429b959 0730bc3a2 f5fbbf302 73eccca5b 09b32bd1b cfeb3eb4f 3b6e6d133 de7914fac 71ad2ad94 1ec6137c0 cb995589d 4b06b412d ae67115f3 cc41b162f ef9c729c6 982c1030d e666dc085 e9cc60339 22b3c4abe 6a0ffb943 21d37c6c8 bdc10f276 b66d44af3 ce44d986a 5ae28a414 
