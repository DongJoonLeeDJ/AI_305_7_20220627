document.addEventListener('DOMContentLoaded', (
    function() {
        //모든 코드를 한 번에 변경
        //ctrl + F2
        const name = document.getElementById('name')//$('#name')
        const gender = document.getElementById('gender')
        const beonho = document.getElementById('beonho')

        const print = document.getElementById('print')
        const reset = document.getElementById('reset')
        const printOrderBy = document.getElementById('printOrderBy')
        const information = document.getElementById('information')

        function resetInfo() {
            //information 안에 있는 걸 다 날리는 것
            //information.html('') 
            information.innerHTML = ''
        }

        reset.addEventListener('click', function() {
            resetInfo()
            students = [] //student.js에 있는 배열
        })

        print.addEventListener('click', function() {
            //val = value = input태그의 value
            const student = new Student(name.value,
            gender.value,Number(beonho.value))
            
            let newStuentInfo = document.createElement('h1')//$('<h1></h1>')
            newStuentInfo.textContent = student.toString()
            if(student.gender=='남')
            {
                newStuentInfo.style.backgroundColor='springgreen'
                newStuentInfo.style.color='blue'
                //.css('background-color','springgreen')
                //.css('color', 'blue')
            } else {
                newStuentInfo.style.backgroundColor='black'
                newStuentInfo.style.color='pink'
                //.css('background-color','black')
                //.css('color', 'pink')
            }
            information.appendChild(newStuentInfo)
        })

        printOrderBy.addEventListener('click', function() {
            
            //중복체크 로직을 적기
            const idx = students.findIndex(
                function(item) {
                    return item.beonho === Number(beonho.value)
                }
            )
            if(idx!=-1) //이미 해당 번호가 있는 경우
            {
                alert('중복!')
                return
            }
            resetInfo() //화면 리셋
            //새로운 값 추가
            students.push(new Student(name.value, gender.value,
            Number(beonho.value)))
            //정렬(객체 정렬할 때도 sort를 씀)
            students.sort(function(a,b) {
                return a.beonho - b.beonho
            })

            //정렬된 것을 print
            for(let i = 0; i<students.length; i++)
            {
                let newStuentInfo = document.createElement('h1')//$('<h1></h1>')
                newStuentInfo.textContent = (students[i].toString())
                if(students[i].gender=='남')
                {
                    newStuentInfo.style.backgroundColor='springgreen'
                    newStuentInfo.style.color='blue'
                    //.css('background-color','springgreen')
                    //.css('color', 'blue')
                } else {
                    newStuentInfo.style.backgroundColor='black'
                    newStuentInfo.style.color='pink'
                    //.css('background-color','black')
                    //.css('color', 'pink')
                }
                information.appendChild(newStuentInfo)
            }
           
        })

    }
)
)