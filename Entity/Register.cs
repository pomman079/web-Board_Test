using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebTest.Entity
{
    public class Register
    {
        public Register()
        {
            DS_CATAGORY = 1;
            DS_IDX = 1;
            NM_USERID = string.Empty;
            NM_TITLE = string.Empty;
            NM_CONTENTS = string.Empty;
            NM_FILEPATH = string.Empty;
            DS_STATUS = 0;
        }

        /// <summary>
        /// 카테고리
        /// </summary>
        public int DS_CATAGORY { get; set; }

        /// <summary>
        /// 유저아이디. 글쓴이
        /// </summary>
        public string NM_USERID { get; set; }

        /// <summary>
        /// 내용
        /// </summary>
        public string NM_CONTENTS { get; set; }

        /// <summary>
        /// 제목
        /// </summary>
        public string NM_TITLE { get; set; }

        /// <summary>
        /// 첨부파일 경로
        /// </summary>
        public string NM_FILEPATH { get; set; }

        /// <summary>
        /// 글 상태. 0:신규, 1:수정, 2:삭제
        /// </summary>
        public int DS_STATUS { get; set; }

        /// <summary>
        /// 글번호
        /// </summary>
        public int DS_IDX { get; set; }



    }
}