#!/bin/bash
if [[ -z "$1" ]];then
   newfile=~/wlty`date +%m%d_%S`.sh
else
   newfile=$1
fi
if  ! grep "^#!" $newfile &>/dev/null; then
cat >> $newfile << EOF
#!/bin/bash
#redd " =========================================================== "
#echo ""
#echo "  ██╗    ██╗ ██╗    ████████╗  ██╗    ██╗    "
#echo "  ██║    ██║ ██║    ╚══██╔══╝   ╚██╗ ██╔╝    "            
#echo "  ██║ █╗ ██║ ██║       ██║      ╚████╔╝     "
#echo "  ██║███╗██║ ██║       ██║       ╚██╔╝     "
#echo "  ╚███╔███╔╝ ███████╗  ██║        ██║       "
#echo "   ╚═╝╚═══╝  ╚══════╝  ╚═╝        ╚═╝        "
#echo ""
#purp " 作者：  网络跳越(sldm) "
#purp " 导航站：www.meng666.buzz || 博客站：www.kehu33.asia "
#Date & Time: `date +"%F %T"`
#redd " =========================================================== "

EOF
fi
vim +16 $newfile