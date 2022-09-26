function genLotto()
{
    let lotto = []

    //난수 생성 코드
    for(let i =0; i<6; i++)
    {
        let num = Math.floor(Math.random()*45)+1
        let isDuplicate = false
        for(let j = 0; j<i; j++)
        {
            if(num==lotto[j]){
                isDuplicate=true
                i--
                break
            }
        }
        if(isDuplicate==false)
            lotto.push(num)
    }

    //정렬코드(가장 정렬인 버블정렬)
    for(let i = 0; i<lotto.length; i++)
    {
        for(let j = 0; j<lotto.length-1-i; j++)
        {
            if(lotto[j]>lotto[j+1])
            {
                let temp = lotto[j]
                lotto[j] = lotto[j+1]
                lotto[j+1] =temp
            } 
        }
    }

    return lotto
}