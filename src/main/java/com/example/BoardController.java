package com.example;
import com.curd.BoardService;
import com.curd.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.util.Date;
import java.text.DateFormat;
import java.util.Locale;

@Controller
@RequestMapping(value="/board")
public class BoardController {

    @Autowired
    BoardService boardService;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String boardList(Model model){
        model.addAttribute("list", boardService.getBoardList());
        System.out.println(boardService.getBoardList().toString());
        return "list";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPost() {
        return "addpostform";
    }

    @RequestMapping(value = "/addOk", method = RequestMethod.POST)
    public String addPostOK(BoardVO vo){
        if (boardService.insertBoard(vo) == 0)
            System.out.println("데이터 추가 실패");
        else
            System.out.println("데이터 추가 성공");
        return "redirect:list";
    }

    @RequestMapping(value = "editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("u", boardVO);
        return "editform";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editPostOk(BoardVO vo) {
        if (boardService.updateBoard(vo) == 0) {
            System.out.println("데이터 수정 실패");
        } else {
            System.out.println("데이터 수정 성공!!");
        }
        return "redirect:list";
    }

    @RequestMapping(value = "/deleteOk/{id}", method = RequestMethod.GET)
    public String deletePost(@PathVariable("id") int id) {
        int i = boardService.deleteBoard(id);
        if (i==0) {
            System.out.println("데이터 삭제 실패");
        }
        else {
            System.out.println("데이터 삭제 성공!!!");
        }
        return "redirect:../list";
    }

    @RequestMapping(value = "/view/{id}", method = RequestMethod.GET)
    public String view(@PathVariable("id") int id, Model model) {
        BoardVO boardVO = boardService.getBoard(id);
        model.addAttribute("list", boardVO);
        return "view";
    }
}