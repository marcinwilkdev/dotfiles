Vim�UnDo� 5�G��P�XͲ�����)�L� p�����4                     (       (   (   (    az��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             az��     �                   5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             az��     �             �                  require('telescope')5��                       	                  	       �                                                �                                                �                                                �                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             az��     �                  �               5��                                                 �                                                 �                          !                      �                        "                     �       	                 *                     �                         !                     �                        )                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             az��     �                 vim.api.nvim_set_keymap('n')5��                         <                      �       %                 F                     5�_�                       )    ����                                                                                                                                                                                                                                                                                                                                                             az��     �                 *vim.api.nvim_set_keymap('n', '<leader>ff')5��       )                  J                      �       +              	   L              	       �       1                 R                     �       2                 S                     �       G                 h                     �       2                  S                      5�_�                       R    ����                                                                                                                                                                                                                                                                                                                                                             az�     �                 Uvim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin')]])5��       R                  s                      5�_�                       e    ����                                                                                                                                                                                                                                                                                                                                                             az�     �                 fvim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]])5��       e                  �                      �       m                 �                     �       i                 �                     5�_�      	                 v    ����                                                                                                                                                                                                                                                                                                                                                             az�     �               �               5��                          �               {       5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             az�     �               �               5��                                        {       5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             az�     �               �               5��                          �              {       5�_�   
                    '    ����                                                                                                                                                                                                                                                                                                                                                             az�#     �               zvim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true })5��       '                 �                     5�_�                       S    ����                                                                                                                                                                                                                                                                                                                                                             az�)     �               zvim.api.nvim_set_keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true })5��       S       
       	   �       
       	       5�_�                       S    ����                                                                                                                                                                                                                                                                                                                                                             az�.     �               zvim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true })5��       S       
          i      
              5�_�                       S    ����                                                                                                                                                                                                                                                                                                                                                             az�3     �                 zvim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true })5��       S       
       	   �      
       	       5�_�                       '    ����                                                                                                                                                                                                                                                                                                                               [          [       v   [    az�>     �                 yvim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true })5��       '                 �                    5�_�                       '    ����                                                                                                                                                                                                                                                                                                                               [          [       v   [    az�?    �               wvim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true })5��       '                 =                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             az��     �                5��                                                �                        /                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             az��     �         
              �         	    5��                          0                      �                         0                     �                        ?               	       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             az��    �                           �             5��                          @               	       �                         @                     �                        M                     �                        Y                      �                         f                      �       +                 �                      �                         �                      �       (                 �                      �                         �                      5�_�                    
        ����                                                                                                                                                                                                                                                                                                                                                             az��     �   
             �   
          5��    
                      �                      �    
                      �                      �                          �                      �                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             az��    �               require('telescope')5��                         �                      �                        �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             az��     �               �               5��                          �              z       5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             az��     �                 yvim.api.nvim_set_keymap('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true })5��       '                 !                    5�_�                       S    ����                                                                                                                                                                                                                                                                                                                                                             az��    �                 yvim.api.nvim_set_keymap('n', '<leader>fe', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true })5��       S       	          M      	              5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             az��    �               *require('telescope').load_extension('fzf')5��       (                                       5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             az��     �               1require('telescope').load_extension('fzf-native')5��       (                                       5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             az��     �               0require('telescope').load_extension('fzfnative')5��       (                                       5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             az��     �               /require('telescope').load_extension('fzfative')5��       (                                       5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             az��     �               .require('telescope').load_extension('fzftive')5��       (                                       5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             az��     �               -require('telescope').load_extension('fzfive')5��       (                                       5�_�                        (    ����                                                                                                                                                                                                                                                                                                                                                             az��     �               ,require('telescope').load_extension('fzfve')5��       (                                       5�_�      !                  (    ����                                                                                                                                                                                                                                                                                                                                                             az��    �               +require('telescope').load_extension('fzfe')5��       (                                       5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                       	           V        az�A     �                    extensions = {           fzf = {               fuzzy = true,   +            override_generic_sorter = true,   (            override_file_sorter = true,   $            case_mode = "smart_case"   	        }       }5��                                 �               5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                  V        az�C   	 �          
      require('telescope').setup {   }�         
      }5��                                                5�_�   "   $           #      '    ����                                                                                                                                                                                                                                                                                                                                                             az�
     �         	      *require('telescope').load_extension('fzf')5��       '                  F                      5�_�   #   %           $      '    ����                                                                                                                                                                                                                                                                                                                                                             az�   
 �         	      )require('telescope').load_extension('fz')5��       '                  F                      5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                  V        az�1    �                 require('telescope').setup {}       1require('telescope').load_extension('fzy-native')    5��                                   R               5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                                                             az��     �                 �              5��                                                  �                                                  �                                                5�_�   &   (           '          ����                                                                                                                                                                                                                                                                                                                                                             az��     �                require('telescope')5��                                                5�_�   '               (      '    ����                                                                                                                                                                                                                                                                                                                                                             az��    �             5��                          +                      5��