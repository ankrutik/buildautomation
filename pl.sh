. refresh.properties

function getPreviousChangeBranch()
{
	local command1="sort test_promote_prefixes.txt | grep 'accurev-promote-*[*0-9]' | tail -n 1"
	local output1=$(eval $command1)
	echo $output1
}

function getSomething()
{
	echo 'asd'
}


echo $0 $1

if [[ $1 -eq '--ammend' ]]; then
	#statements
	echo ''
fi

prevBranch=$(getPreviousChangeBranch)


echo $prevBranch





