Vim�UnDo� =���G�3���k����"~��@ � vl��   8                 7       7   7   7    az��   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             az{     �                   �               5��                    G                       %      5�_�                           ����                                                                                                                                                                                                                                                                                                                                       	           V        az{�     �              	   !local use = require('packer').use   $require('packer').startup(function()   U  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client   1  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin   7  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp   @  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp   +  use 'L3MON4D3/LuaSnip' -- Snippets plugin   end)    5��            	                       z              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        az{�     �          @      -- �          ?    5��                                                  �                                                �                      
                 
       �                                              �                                              5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                  V        az{�    �         @    5��                          &                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             az|�     �                4-- Add additional capabilities supported by nvim-cmp5��                          '       5               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             az|�     �                _-- Enable some language servers with the additional completion capabilities offered by nvim-cmp5��                          �       `               5�_�                    	        ����                                                                                                                                                                                                                                                                                                                                                             az|�     �      	          '    -- on_attach = my_custom_on_attach,5��                          0      (               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             az|�     �                9-- Set completeopt to have a better completion experience5��                          Z      :               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             az|�     �                -- luasnip setup5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             az|�     �                !local luasnip = require 'luasnip'5��                          �      "               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             az|�     �         ;    �         ;    5��                          &               "       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             az|�     �          <      %local nvim_lsp = require('lspconfig')5��                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             az|�     �          <      $local nvim_lsp = require'lspconfig')5��                                                5�_�                       %    ����                                                                                                                                                                                                                                                                                                                                                             az|�     �          <      %local nvim_lsp = require 'lspconfig')5��        $                  $                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V   #    az|�     �                    -- nvim-cmp setup5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V   #    az|�     �                local cmp = require 'cmp'5��                          �                     5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                 V   #    az|�    �         9    �         9    5��                          G                      5�_�                   7        ����                                                                                                                                                                                                                                                                                                                                                             az~�     �   7   9   ;          �   7   9   :    5��    7                      �                     �    7                     �                     �    7                    �                    �    7                    �                    �    7                    �                    �    7                     �                     5�_�                    8       ����                                                                                                                                                                                                                                                                                                                                                             az~�     �   7   9   ;          { name = '' }5��    7                     �                     �    7                    �                    5�_�                     8       ����                                                                                                                                                                                                                                                                                                                                                             az~�     �   7   9   ;          { name = 'buffer' }5��    7                     �                     �    7                     �                     5�_�      !               :        ����                                                                                                                                                                                                                                                                                                                                                             az~�     �   :   =   <       �   :   <   ;    5��    :                      �                     �    :                      �                     �    ;                      �                     �    ;                    �                    �    ;                    �                    �    ;                    �                    5�_�       "           !   <       ����                                                                                                                                                                                                                                                                                                                                                             az~�     �   <   >   ?              �   <   >   >    �   ;   >   =      cmp.setup.cmdline(':')5��    ;                     �                     �    ;                     �                     �    <                      �                     �    <                      �                     �    <                      �                     �    <                    �              	       5�_�   !   #           "   =       ����                                                                                                                                                                                                                                                                                                                                                             az~�     �   =   ?   A                  �   =   ?   @    5��    =                      �              	       �    =                     �                    �    =                    	                    �    =                    	                    �    =                    
                    5�_�   "   $           #   =       ����                                                                                                                                                                                                                                                                                                                            @          =          V       az      �   <   A   A              sources = {               { name = 'buffer' }   	        }       })5��    <                     �                    �    =                     �                    �    >                                         �    ?                                           5�_�   #   %           $   A        ����                                                                                                                                                                                                                                                                                                                            @          <          V       az"     �   A            �   A            5��    A                                    N       5�_�   $   &           %   <       ����                                                                                                                                                                                                                                                                                                                            @          <          V       az+     �   ;   =   F      cmp.setup.cmdline(':', {5��    ;                    �                    5�_�   %   '           &   C       ����                                                                                                                                                                                                                                                                                                                            E          C          v       az7     �   B   D   F          sources = {           { name = 'buffer' }       }5��    B                    E      #               5�_�   &   (           '   C       ����                                                                                                                                                                                                                                                                                                                            C          C          v       az:     �   B   D   D          sources = 5��    B                     E                     �    B   "                 Y                     �    C                     Z                    5�_�   '   )           (   C       ����                                                                                                                                                                                                                                                                                                                            C          C          v       azA     �   C   E   F                      �   C   E   E    �   C   E          
        })�   B   D          "    sources = cmp.config.sources({5��    B                     7                    �    C                     ^                    �    C                      ^              	       �    C                     ^                    �    C                    o                    5�_�   (   *           )   E       ����                                                                                                                                                                                                                                                                                                                            C          C          v       azP     �   E   G   H                      �   E   G   G    �   D   G   F                  })5��    D                     �                     �    D                    �                     �    E                      �                     �    E                  $   �             $       5�_�   )   +           *   C       ����                                                                                                                                                                                                                                                                                                                            G          C          V       az^     �   B   H   H      &        sources = cmp.config.sources({   !                { name = 'path' }               }, {   $                { name = 'cmdline' }               })5��    B                     7                    �    C                     Z                    �    D                     x                    �    E                     �                    �    F                     �                    5�_�   *   4           +   D       ����                                                                                                                                                                                                                                                                                                                            G   	       D          V       azb    �   C   H   H                  { name = 'path' }           }, {                { name = 'cmdline' }   
        })5��    C                     Z                    �    D                     t                    �    E                     }                    �    F                     �                    5�_�   +   5   ,       4          ����                                                                                                                                                                                                                                                                                                                                                             az�    �         H      &vim.o.completeopt = 'menuone,noselect'5��                         �                     5�_�   4   6           5           ����                                                                                                                                                                                                                                                                                                                                                  V        az�W     �                /    ['<C-p>'] = cmp.mapping.select_prev_item(),   /    ['<C-n>'] = cmp.mapping.select_next_item(),5��                          C      `               5�_�   5   7           6   :        ����                                                                                                                                                                                                                                                                                                                            :           F           V        az�i   	 �   E   G          })�   D   F              })�   C   E                  { name = 'cmdline' }�   B   D              }, {�   A   C                  { name = 'path' }�   @   B          "    sources = cmp.config.sources({�   ?   A          cmp.setup.cmdline(':', {�   >   @           �   =   ?          })�   <   >              }�   ;   =                  { name = 'buffer' }�   :   <              sources = {�   9   ;          cmp.setup.cmdline('/', {5��    9                     t                    �    :                     �                    �    ;                     �                    �    <                     �                    �    =                     �                    �    >                       �                      �    ?                     �                    �    @           "       %   �      "       %       �    A                                         �    B                     1                    �    C                     =                    �    D                  	   ]             	       �    E                     g                    5�_�   6               7   9        ����                                                                                                                                                                                                                                                                                                                            F           9           V        az��   
 �   8   9              -- cmp.setup.cmdline('/', {   --     sources = {   --         { name = 'buffer' }   --     }   -- })       -- cmp.setup.cmdline(':', {   %--     sources = cmp.config.sources({   --         { name = 'path' }   --     }, {   --         { name = 'cmdline' }   	--     })   -- })5��    8                      s      �               5�_�   +   -       4   ,          ����                                                                                                                                                                                                                                                                                                                            G          D          V       az�     �      	   H      Alocal servers = { 'lua', 'rust_analyzer', 'pyright', 'tsserver' }5��                                             5�_�   ,   0           -          ����                                                                                                                                                                                                                                                                                                                            G          D          V       az�     �      	   H      8local servers = { 'lua', 'java', 'pyright', 'tsserver' }5��                                            5�_�   -   1   .       0          ����                                                                                                                                                                                                                                                                                                                            G          D          V       az�     �      	   H       local servers = { 'lua', 'java'}5��                                              5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                            G          D          V       az�     �      	   H      !local servers = { 'lua', 'java' }5��                                              5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                            G          D          V       az�    �      	   H      "local servers = { 'lua', 'jdtls' }5��                                            5�_�   2               3          ����                                                                                                                                                                                                                                                                                                                                                             az�    �      	   H      "local servers = { 'lua', 'jdtls' }5��                                             5�_�   -   /       0   .          ����                                                                                                                                                                                                                                                                                                                            G          D          V       az�     �      	   H       local servers = { 'lua', 'java'}5��                                              5�_�   .               /          ����                                                                                                                                                                                                                                                                                                                            G          D          V       az�    �      	   H      !local servers = { 'lua', 'java' }5��                                              5�_�                          ����                                                                                                                                                                                                                                                                                                                                                v       az|�     �         :            .lsp_expand(args.body)5��                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                v       az|�     �         :      #      luasnip.lsp_expand(args.body)5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        az{     �       
        5��            	                       z              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        az{     �              5��                          Q      4               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        az{     �               5��                                   5               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        az{%     �              5��                          �       `               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        az{b     �          :       �          ;      %local nvim_lsp = require('lspconfig')5��                                                  �                                                  �                                              5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                  V        az{m     �         ;       5��                          &                      5�_�      	              	        ����                                                                                                                                                                                                                                                                                                                                                  V        az{w     �      
        5��                          0      (               5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                V       az{{     �              5��                          Z      :               5�_�   	               
          ����                                                                                                                                                                                                                                                                                                                                                V       az{�     �              5��                          �      g               5��