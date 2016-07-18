. refresh.properties

function getPreviousChangeBranch()
{
	local command1="git branch | sort | grep '$changeBranchPrefix[*0-9]' | tail -n 1"
	local output1=$(eval $command1)
	echo $output1
}

function getNextChangeBranch()
{
	local prevBranch=$(getPreviousChangeBranch)
	local command1="echo $prevBranch | cut -d '-' -f 3"
	local nextBranchNumber=$(eval $command1)
	nextBranchNumber=$(($nextBranchNumber+1))
	echo $changeBranchPrefix$nextBranchNumber
}


echo $0 $1

if [[ $1 -eq '--ammend' ]]; then
	#statements
	echo ''
fi

prevBranch=$(getNextChangeBranch)


echo $prevBranch





