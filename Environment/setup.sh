curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh > Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh -b

sudo yum install git -y
git clone https://github.com/USF-ML2/final-project-group16

export PATH="/home/ec2-user/miniconda3/bin:$PATH"
conda env create -f final-project-group16/Environment/msds630.yml -n msds630


aws s3 cp s3://msds630projbucket ~/data --recursive
#aws s3 cp s3://msds630projbucket/train_val ~/data/train_val --recursive
#aws s3 cp s3://msds630projbucket/raw_csv/messages.csv ~/data/raw_csv/messages.csv
#aws s3 cp s3://msds630projbucket/raw_csv/events.csv ~/data/raw_csv/events.csv
#aws s3 cp s3://msds630projbucket/raw_csv/sessions.csv ~/data/raw_csv/sessions.csv





