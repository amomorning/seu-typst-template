#import "../utils/packages.typ": fakebold
#import "../utils/fonts.typ": 字体, 字号, chineseunderline, justify-words

#let degree-cover-conf(
  author: (CN: "王东南", EN: "WANG Dong-nan", ID: "012345"),
  thesis-name: (
    CN: "硕士学位论文",
    EN: [
      A Thesis submitted to \
      Southeast University \
      For the Academic Degree of Master of Touching Fish
    ],
    heading: "东南大学硕士学位论文",
  ),
  title: (
    CN: "摸鱼背景下的Typst模板使用研究",
    EN: "A Study of the Use of the Typst Template During Touching Fish",
  ),
  advisors: (
    (CN: "湖牌桥", EN: "HU Pai-qiao", CN-title: "教授", EN-title: "Prof."),
    (
      CN: "苏锡浦",
      EN: "SU Xi-pu",
      CN-title: "副教授",
      EN-title: "Associate Prof.",
    ),
  ),
  school: (
    CN: "摸鱼学院",
    EN: "School of Touchingfish",
  ),
  major: (
    main: "摸鱼科学",
    submajor: "计算机摸鱼",
    direction: "摸鱼模板研究",
  ),
  degree: "摸鱼学硕士",
  category-number: "N94",
  secret-level: "公开",
  UDC: "303",
  school-number: "10286",
  committee-chair: "张三 教授",
  readers: (
    "李四 副教授",
    "王五 副教授",
  ),
  date: (
    CN: (
      defend-date: "2099年01月02日",
      authorize-date: "2099年01月03日",
      finish-date: "2024年01月15日",
    ),
    EN: (
      finish-date: "Jan 15, 2024",
    ),
  ),
  degree-form: none,
  anonymous: false,
) = page(
  margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
  numbering: none,
  header: none,
  footer: none,
  {
    let anonymous-hide(body) = {
      return if anonymous {"　"} else {body}
    }
    
    set text(font: 字体.宋体, size: 字号.小四, weight: "regular", lang: "zh")
    set align(center + top)
    set par(first-line-indent: 0pt)

    place(
      top + center,
      {
        image("../assets/cover_school.png", height: 11cm)
      },
    )

    place(
      top + left,
      dy: 0.5cm,
      {
        // 原始模板左侧列和右侧校徽不等高
        set text(
          font: 字体.宋体,
          size: 字号.小五,
          weight: "regular",
          lang: "zh",
          region: "cn",
        )
        set align(center)
        let justify-4em(s) = justify-words(s, width: 4em)
        grid(
          columns: (4em, 1em, 8em),
          row-gutter: 0.4em,
          justify-4em("学校代码"),
          "：",
          chineseunderline(school-number),
          justify-4em("分类号"),
          "：",
          chineseunderline(category-number),
          justify-4em("密级"),
          "：",
          chineseunderline(secret-level),
          justify-4em("UDC"),
          "：",
          chineseunderline(UDC),
          justify-4em("学号"),
          "：",
          chineseunderline(anonymous-hide(author.ID)),
        )
      },
    )

    place(
      top + right,
      image("../assets/vi/seu_logo.png", width: 1.97cm),
    )

    v(277.3pt)

    block(
      height: 100% - 277.3pt,
      grid(
      rows: (auto, 1fr, auto, 1fr, auto, 1fr, auto, 1fr, auto),
      // 大标题，如“硕士学位论文”
      block(fakebold(text(
        font: 字体.标题宋体,
        size: 字号.小初,
        thesis-name.CN
      ))),
      // 空间
      [],
      // 标题 + 学位论文形式
      {
        block(text(
          font: 字体.黑体,
          size: 字号.一号,
          title.CN
        ))
        if not degree-form in (none, [], [ ], "") {
          block(text(
            font: 字体.标题宋体,
            size: 字号.三号,
            "（学位论文形式：" + degree-form + "）"
          ), below: 2em)
        }
      },
      // 空间
      [],
      // 研究生姓名和导师姓名
      {
        set text(font: 字体.黑体, size: 字号.小二)
        set par(leading: 1em)

        grid(
          columns: (5em, 1em, 10em),
          row-gutter: 1em,

          text(font: 字体.宋体)[研究生姓名],
          [：],
          {chineseunderline(anonymous-hide(author.CN))},

          text(font: 字体.宋体, justify-words("导师姓名", width: 5em)),
          [：],
          chineseunderline(
            advisors.map(it => anonymous-hide(it.CN + " " + it.CN-title)).join("\n")
          )
        )
      },
      // 空间
      [],
      // 下方内容
      {
        let justify-7em(s) = justify-words(s, width: 7em)
        let justify-6em(s) = justify-words(s, width: 6em)

        set text(font: 字体.黑体, size: 字号.小四)
        grid(
          columns: (17em, 16em),
          column-gutter: 1em,
          grid(
            columns: (7em, 10em),
            row-gutter: 1em,
            text(font: 字体.宋体, justify-7em("申请学位类别")),
            chineseunderline(degree),
            text(font: 字体.宋体, justify-7em("一级学科名称")),
            chineseunderline(major.main),
            text(font: 字体.宋体, justify-7em("二级学科名称")),
            chineseunderline(major.submajor),
            text(font: 字体.宋体, justify-7em("研究方向")),
            chineseunderline(major.direction),
            text(font: 字体.宋体, "答辩委员会主席"),
            chineseunderline(committee-chair),
          ),
          grid(
            columns: (6em, 10em),
            row-gutter: 1em,
            text(font: 字体.宋体, "学位授予单位"),
            chineseunderline("东 南 大 学"),
            text(font: 字体.宋体, "论文答辩日期"),
            chineseunderline(date.CN.defend-date),
            text(font: 字体.宋体, "学位授予日期"),
            chineseunderline(date.CN.authorize-date),
            text(font: 字体.宋体, justify-6em("评阅人")),
            chineseunderline(readers.join("\n")),
          )
        )
      },
      // 空间
      [],
      // 日期
      text(font: 字体.宋体, size: 字号.四号, date.CN.finish-date)
    ),
    )
  },
)

#degree-cover-conf(
  author: (CN: "王东南", EN: "WANG Dong-nan", ID: "012345"),
  thesis-name: (
    CN: "硕士学位论文",
    EN: [
      A Thesis submitted to \
      Southeast University \
      For the Academic Degree of Master of Touching Fish
    ],
    heading: "东南大学硕士学位论文",
  ),
  title: (
    CN: "摸鱼背景下的Typst模板使用研究",
    EN: "A Study of the Use of the Typst Template During Touching Fish",
  ),
  advisors: (
    (CN: "湖牌桥", EN: "HU Pai-qiao", CN-title: "教授", EN-title: "Prof."),
    (
      CN: "苏锡浦",
      EN: "SU Xi-pu",
      CN-title: "副教授",
      EN-title: "Associate Prof.",
    ),
  ),
  school: (
    CN: "摸鱼学院",
    EN: "School of Touchingfish",
  ),
  major: (
    main: "摸鱼科学",
    submajor: "计算机摸鱼",
    direction: "摸鱼模板研究",
  ),
  degree: "摸鱼学硕士",
  category-number: "N94",
  secret-level: "公开",
  UDC: "303",
  school-number: "10286",
  committee-chair: "张三 教授",
  readers: (
    "李四 副教授",
    "王五 副教授",
  ),
  date: (
    CN: (
      defend-date: "2099年01月02日",
      authorize-date: "2099年01月03日",
      finish-date: "2024年01月15日",
    ),
    EN: (
      finish-date: "Jan 15, 2024",
    ),
  ),
  degree-form: "应用研究",
  anonymous: false,
)
