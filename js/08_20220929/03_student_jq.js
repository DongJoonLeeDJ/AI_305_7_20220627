$(
    function() {
        //모든 코드를 한 번에 변경
        //ctrl + F2
        const name = $('#name')
        const gender = $('#gender')
        const beonho = $('#beonho')

        const print = $('#print')
        const reset = $('#reset')
        const printOrderBy = $('#printOrderBy')
        const information = $('#information')

        function resetInfo() {
            //information 안에 있는 걸 다 날리는 것
            information.html('') 
        }

        reset.on('click', function() {
            resetInfo()
            students = [] //student.js에 있는 배열
        })

        print.on('click', function() {
            //val = value = input태그의 value
            const student = new Student(name.val(),
            gender.val(),Number(beonho.val()))
            
            let newStuentInfo = $('<h1></h1>')
            newStuentInfo.text(student.toString())
            if(student.gender=='남')
            {
                newStuentInfo
                .css('background-color','springgreen')
                .css('color', 'blue')
            } else {
                newStuentInfo
                .css('background-color','black')
                .css('color', 'pink')
            }
            information.append(newStuentInfo)
        })

    }
)