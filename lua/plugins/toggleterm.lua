local shellpath="'"..os.getenv('SHELL').."'"

require("toggleterm").setup{

    open_mapping=[[<c-\>]],
    direction =  'float',
    close_on_exit=true,
    shell=shellpath,
    persist_size=true,
    persist_mode=true,
    auto_scroll=true,

    float_opts={
        border='single',
        title_pos='center'
    }



}