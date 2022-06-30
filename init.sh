yum -y install wget
# wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
# yum makecache

yum install sudo -y 
sudo yum -y update
ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && sudo yum install -y git
npm config set registry https://registry.npmmirror.com
echo 'export N_NODE_MIRROR="https://mirrors.ustc.edu.cn/node/"' | tee -a ~/.bashrc
echo 'export N_NODE_DOWNLOAD_MIRROR="https://mirrors.ustc.edu.cn/node/"' | tee -a ~/.bashrc
source ~/.bashrc

curl -fsSL https://raw.githubusercontent.com/tj/n/master/bin/n | sudo -E bash -s lts
sudo --preserve-env=PATH env npm install -g n
sudo --preserve-env=PATH env n lts
# git clone https://gitcode.net/iSpeller/Adachi-BOT.git
git clone https://github.com/Arondight/Adachi-BOT.git
cd ./Adachi-BOT/

echo "安装chromium"

sudo yum -y install epel-release
sudo yum -y install chromium


cp -v ~/.bashrc{,-backup} 

echo 'export PUPPETEER_EXECUTABLE_PATH="/usr/lib64/chromium-browser/chromium-browser"' | tee -a ~/.bashrc
echo 'export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"' | tee -a ~/.bashrc
source ~/.bashrc

npm install

#echo "复制配置文件"
#
#cp -iv ./config_defaults/{setting,cookies}.yml ./config/
