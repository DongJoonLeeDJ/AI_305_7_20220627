//window.addEventListener('load', function(){});
//document.addEventListener('DOMContentLoaded', function(){})
window.addEventListener('load',
(
    function() {
        //const sounds = $('audio') //오디오태그들
        const sounds = document.querySelectorAll('audio')
        //const pads = $('.pads div') //pads 안에 있는 div들
        const pads = document.querySelectorAll('.pads div')
        //const visual = $('.visual')
        const visual = document.querySelector('.visual')

        //const title = $('.title')
        const title = document.querySelector('.title')
        //pad1~pad6의 색상을 담는 배열
        const colors = ['red','orange','yellow','green',
                        'blue','plum']
        //음악 재생이 끝났을 경우
        // sounds.each(function(index,soundFile) {
        //     soundFile.onended = function() {
        //         visual.text('')
        //         title.text('')
        //     }
        // })
        sounds.forEach(
            function(soundFile) {
                soundFile.onended = function() {
                    visual.innerHTML=''
                    title.innerHTML=''
                }
            }
        )
        //class명이 pads인 태그 안쪽의 div들에게 적용되는
        //함수
        // pads.each(function(index,pad) {
        //     //pad = pads안에있는 태그들
        //     //즉 이 배열의 구성요소들
        //     //pad 대신 element등의 이름을 써도 무방함

        //     //특정 파일 클릭할 때
        //     $(pad).on('click', function() {

        //         //모든 사운드들을 일단 멈춘다.
        //         //pause : 일시정지
        //         sounds.each(function(index,soundFile){
        //             soundFile.pause()
        //         })
        //         //내가 클릭한 부분의 사운드
        //         if(sounds[index]) {
        //             //처음부터 재생함
        //             sounds[index].currentTime=0
        //             sounds[index].play()
                    
        //             //파일명을 적절히 잘라서 표시
        //             const strArray = 
        //             sounds[index].src.split('sound/')
        //             //sound/ 문자 기준으로 자름

        //             console.log(strArray[0])
        //             console.log(strArray[1])

        //             title.text(strArray[1].split('.')[0])
        //             //title.text(strArray[1])
        //             //title.text(strArray[1].split('.')[0])
                    
        //             //strArray[0]은 뭔지 확인해보기
        //             //strArray[0] 절대 경로

        //         }

        //         createBubbles(index)

        //     })
        // })
        pads.forEach(function(pad, index) {
            pad.addEventListener('click', function(){
                sounds.forEach(function(inx) {
                    inx.pause()
                })
                if(sounds[index]) 
                {
                    sounds[index].currentTime=0
                    sounds[index].play()
                    const strArray = 
                    sounds[index].src.split('sound/')
                    title.innerHTML=strArray[1].split('.')[0]
                }
                createBubbles(index)
            })
        })

        const createBubbles = function(index) {
            //visual.text('')
            visual.innerHTML = ''
            //css에서 적용될 div태그
            //const bubble = $('<div></div>')
            const bubble = document.createElement('div')
            //visual.append(bubble)
            visual.appendChild(bubble)
            bubble.style.backgroundColor=colors[index]
            bubble.style.top='300px'
            bubble.style.animation = 
            'animation 2000ms linear infinite both'
            // bubble.css('background', colors[index]).
            // css('top', '300px')
            // .css('animation', 
            // 'animation 2000ms linear infinite both')
        }
    }
)
)