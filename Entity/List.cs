using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebTest.Entity
{
    public class List
    {
        public List()
        {
            DS_CATAGORY = 0;

            DS_PAGE_NO = 0;

            DS_PAGE_LISTSIZE = 0;

            DS_IDX = 0;

            NM_TITLE = string.Empty;

            NM_USERID = string.Empty;

            SD_REGDATE = DateTime.Today;

            DS_VIEWCNT = 0;

            NM_FILEPATH = string.Empty;
        }

        /// <summary>
        /// 게시판 종류(카테고리)
        /// </summary>
        public int DS_CATAGORY { get; set; }

        /// <summary>
        /// 한페이지에 나타날 페이지 갯수
        /// </summary>
        public int DS_PAGE_NO { get; set; }

        /// <summary>
        /// 한 페이지에 나타날 게시글 갯수
        /// </summary>
        public int DS_PAGE_LISTSIZE { get; set; }

        /// <summary>
        /// 제목
        /// </summary>
        public string NM_TITLE { get; set; }

        /// <summary>
        /// 글번호
        /// </summary>
        public int DS_IDX { get; set; }

        /// <summary>
        /// 작성자
        /// </summary>
        public string NM_USERID { get; set; }

        /// <summary>
        /// 등록날짜
        /// </summary>
        public DateTime SD_REGDATE { get; set; }

        /// <summary>
        /// 뷰 카운트
        /// </summary>
        public int DS_VIEWCNT { get; set; }

        /// <summary>
        /// 첨부파일 경로
        /// </summary>
        public string NM_FILEPATH { get; set; }
    }
}