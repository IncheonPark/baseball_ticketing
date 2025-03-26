



    
    const file_delete = document.getElementsByClassName("file-delete");

    for (let f of file_delete){
        f.addEventListener('click', ()=>{
        let check = confirm("정말 삭제?? 복구 불가");
        if(check){
            //DB에서 삭제, HDD 삭제
            let num = f.getAttribute("data-file-num");
            let kind = f.getAttribute("data-kind");
            
            console.log(num)
            console.log(kind)

            //동기식 비동기식
            //'post'
            let url=`/${kind}/fileDelete`; // 절대 경로
            url ='./fileDelete'; // 상대 경로
            fetch(url, {
                method:'POST',
                headers:{
                    "Content-type":"application/x-www-form-urlencoded; charset=UTF-8"
                },
                body: `fileNum=${num}` //'fileNum='+num

            })
            .then(r => r.text())
            .then(r => {
                console.log(r)
                if(r.trim()*1 > 0){
                    //1.파일갯수 count 수 수정
                    count--;
                    //2. Element 삭제
                    f.parentElement.remove()
                   
                }else {
                    alert('파일 삭제 실패');    
                }
            })
            .catch(e => {
                alert('파일 삭제 오류');
            })
                        
        }
        })
    }
