Vim�UnDo� ��S�1�p��.��;6�y�v�~��Ƈ|��   �     TensorStruct(State state){   :         (   '   (   (   &    g�    _�                         ,    ����                                                                                                                                                                                                                                                                                                                                                             g�-     �      $   �      ,  actionT MapIndexToAction(int actionIndex);5��       ,                                      �                          
                     �                                             �                                              �    !                                         �    !                                           �    !                                          �    "                     #                     �    "                                         5�_�                   "        ����                                                                                                                                                                                                                                                                                                                                                             g�g     �   !   "           5��    !                                           5�_�                    "       ����                                                                                                                                                                                                                                                                                                                                                             g�g     �   !   "            }5��    !                                           5�_�                    !       ����                                                                                                                                                                                                                                                                                                                                                             g�i    �       "   �        void SaveModel(){5��                                             5�_�      	              !       ����                                                                                                                                                                                                                                                                                                                                                             g�k    �       #   �        void SaveModel();5��                                              �    !                                          �    !                    '                    5�_�      
           	   6        ����                                                                                                                                                                                                                                                                                                                                                             g��     �   5   6           5��    5                      �                     5�_�   	              
   5        ����                                                                                                                                                                                                                                                                                                                                                             g��     �   4   5            5��    4                      �                     5�_�   
                 5        ����                                                                                                                                                                                                                                                                                                                                                             g��    �   4   7   �       5��    4                      �                     �    5                      �                     �    5                      �                     5�_�                    !       ����                                                                                                                                                                                                                                                                                                                                                             g�R    �       !            void SaveModel();     void LoadModel();    5��                                 )               5�_�                    3        ����                                                                                                                                                                                                                                                                                                                            4          4          v       g��    �   2   4   �       5��    2                      �                     5�_�                    {       ����                                                                                                                                                                                                                                                                                                                                                             g��    �   z   {          J    std::cout << "playerUnits size: " << playerUnits.sizes() << std::endl;5��    z                      �      K               5�_�                    3       ����                                                                                                                                                                                                                                                                                                                                                             g�    �   2   3           public:5��    2                      �      	               5�_�                       >    ����                                                                                                                                                                                                                                                                                                                                                             g�    �         �      >  actionT SelectAction(State state); // gotta return an action5��       >                 k                     �                      %   l             %       �               (          l      (              �                          l                     �       >                  k                     �       >                 k                     �                      %   l             %       �              $          p      $              �                        �                     �                         �                    �                          �                     �                         �                     �                         �                     5�_�                       8    ����                                                                                                                                                                                                                                                                                                                                                             g�-     �         �      >  actionT SelectAction(State state); // gotta return an action       void PrintWeight();5��       8                 e                     5�_�                       8    ����                                                                                                                                                                                                                                                                                                                                                             g�.   
 �         �      K  actionT SelectAction(State state); // gotta return an void PrintWeight();5��       8                 e                     �                      %   f             %       �               (          f      (              5�_�                    !   ,    ����                                                                                                                                                                                                                                                                                                                                                             g�    �       #   �      ,  actionT MapIndexToAction(int actionIndex);5��        ,                                      �    !                                          5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g�     �         �      	  DQN(){}5��                      
   �              
       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g�    �         �        DQN(Player& pl){}5��                         �                     �                     
   �             
       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g�!    �         �      #include "Transition.h"5��                                              �                       
                 
       �       	                                      �                        $                    �                         3                     �                         3                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g�o     �         �         DQN(Player& pl) : player(pl){}5��                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g�o     �         �        DQN(Player& ) : player(pl){}5��                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g�p     �         �        DQN(Player) : player(pl){}5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g�r    �         �        DQN() : player(pl){}5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g�x    �         �        void PrintWeight();5��                        �                     �                         �                     �                     	   �             	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             gр    �         �        void AttachAgent();5��                      
   �              
       5�_�                    $   	    ����                                                                                                                                                                                                                                                                                                                                                             g�)    �   #   %   �        Player player;5��    #                    ]                    �    #   	                 ^                    5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                                             g�;    �   #   $            Player* player;5��    #                      U                     5�_�                     D   ?    ����                                                                                                                                                                                                                                                                                                                                                             g��    �   C   E   �      A    enemyStructures = GetStructuresTensor(state.enemyStructures);5��    C   ;                 g                    5�_�      !               {   V    ����                                                                                                                                                                                                                                                                                                                                                             g��    �   z   |   �      x    torch::Tensor paddedStructsEnemy = torch::zeros({1, (MAX_STRUCTS - enemyStructures.size(1) / strucVar) * strucVar});5��    z   P                 �                    5�_�       "           !   D       ����                                                                                                                                                                                                                                                                                                                                                             g�    �   C   E   �      >    enemyStructures = GetStructuresTensor(state.enemyStructs);5��    C                    ;                    5�_�   !   #           "   }   �    ����                                                                                                                                                                                                                                                                                                                                                             g�B    �   |   ~   �      �    std::vector<torch::Tensor> tensors = {currentMap, playerGold, playerFood, playerUnits, paddedUnits, playerStructs, paddedStructs, enemyGold, enemyFood, enemyUnits, paddedUnitsEnemy, enemyStructures, paddedStructsEnemy};5��    |   �                 �                    5�_�   "   %           #   �       ����                                                                                                                                                                                                                                                                                                                                                             g�M    �   �   �   �         torch::Tensor enemyStructures;5��    �                    g                    5�_�   #   &   $       %   :       ����                                                                                                                                                                                                                                                                                                                                                             g�     �   9   ;   �        TensorStruct(State state){5��    9                     t                     �    9                    x                    5�_�   %   '           &   :       ����                                                                                                                                                                                                                                                                                                                                                             g�    �   9   ;   �      "  TensorStruct(const State state){5��    9                                          �    9                                        5�_�   &   (           '   :       ����                                                                                                                                                                                                                                                                                                                                                             g�     �   9   ;   �      "  TensorStruct(const State state){5��    9                                          5�_�   '               (   :       ����                                                                                                                                                                                                                                                                                                                                                             g�    �   9   ;   �        TensorStruct(State state){5��    9                     t                     5�_�   #           %   $   :       ����                                                                                                                                                                                                                                                                                                                                                             gU    �   9   ;   �        TensorStruct(State& state){5��    9                     y                     5�_�                   #       ����                                                                                                                                                                                                                                                                                                                                                             g�d     �   "   $        5��    "                                           5�_�                    #        ����                                                                                                                                                                                                                                                                                                                                                             g�d     �   "   $        5��    "                                           5�_�                     #        ����                                                                                                                                                                                                                                                                                                                                                             g�d     �   "   $        5��    "                            
               5��