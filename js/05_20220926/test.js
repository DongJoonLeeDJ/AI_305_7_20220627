 function genLotto()
 {

     let lotto = []
            let output = ''
            for(let i = 0; i<7; i++)
            {
                let num = Math.floor(Math.random()*45)+1
                if(i>0) //중복검사
                {
                    //indexOf 함수 
                    //특정한 값이 배열안에서 어디있는지 찾음
                    //만약 그 값이 배열 안에 없으면 -1
                    if(lotto.indexOf(num) != -1)
                    {
                        i--
                        continue
                    }
                }
                lotto[i] = Number(num)
                
            }
            lotto.sort((a,b)=>{return a-b})
            return lotto
 }