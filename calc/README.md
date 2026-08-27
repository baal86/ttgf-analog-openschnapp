<html lang="en"><head>
    <title>Created with CalcpadCE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <script src="https://calcpad.local/jquery-3.6.3.min.js"></script>
    <style>
        body {
            background-color: white;
            color: black;
            font-size: 11pt;
            font-family: 'Segoe UI', 'Arial Nova', Helvetica, sans-serif;
            margin-left: 5mm;
            max-width: 190mm;
        }

        h1, h2, h3, h4, h5, h6, .errorHeader, .roundBox {
            font-family: 'Arial Nova', Helvetica, sans-serif;
            margin: 0.5em 0 0.5em 0;
            padding: 0;
            line-height: 150%;
        }

        h1 {font-size: 2.1em;}
        h2 {font-size: 1.7em;}
        h3 {font-size: 1.4em;}
        h4 {font-size: 1.2em;}
        h5 {font-size: 1.1em;}
        h6 {font-size: 1em;}

        p, li {
            margin: 0.3em 0 0.3em 0;
            padding: 0;
            line-height: 150%;
        }

        select, kbd {
            font-family: 'Segoe UI', sans-serif;
        }

        a:hover {
            background-color: #e9f6ff;
        }

        .eq, input[type="text"], table.matrix {
            font-family: 'Georgia Pro', 'Century Schoolbook', 'Times New Roman', Times, serif;
        }

            .eq var {
                color: #06d;
                font-size: 105%;
            }

            .eq i {
                color: #086;
                font-style: normal;
                font-size: 90%;
            }

            i.unit {
                color: #043!important;
                font-size: 90%!important;
                vertical-align: -1pt;
            }

            sup.unit {
                font-family: Calibri, Candara, Corbel, sans-serif;
                font-size: 70%!important;
            }

            .eq b {
                font-weight: 600;
            }

            .eq sub {
                font-family: Calibri, Candara, Corbel, sans-serif;
                font-size: 80%;
                vertical-align: -18%;
                margin-left: 1pt;
            }

            .eq sup {
                display: inline-block;
                margin-left: 1pt;
                margin-top: -3pt;
                font-size: 75%;
            }

            .eq small {
                font-family: Calibri, Candara, Corbel, sans-serif;
                font-size: 70%;
            }

                .eq small var {
                    font-family: 'Georgia Pro', 'Century Schoolbook', 'Times New Roman', Times, serif;
                    font-size: 8.5pt;
                }

                .eq small i {
                    font-family: 'Georgia Pro', 'Century Schoolbook', 'Times New Roman', Times, serif;
                    font-size: 6pt;
                }

            .eq u, input, select {
                background-color: LightYellow;
            }

                input[type="text"], select {
                    font-size: 10pt;
                    padding: 0.2em 0.4em;
                    border: 0.5pt solid #CCC;
                    border-radius: 0.35em;
                    box-shadow: 0.06em 0.06em 0.5em #ddd;
                    min-width: 3em;
                }

                input[type="text"] {
                    text-align: right;
                }

                input[type="checkbox"],
                input[type="radio"] {
                    vertical-align: baseline;
                    position: relative;
                    bottom: -1pt;
                    margin-right: 1pt;
                }

                    input[type="checkbox"].post:disabled:not(:checked),
                    input[type="checkbox"].post:disabled:not(:checked) + label,
                    input[type="radio"].post:disabled:not(:checked),
                    input[type="radio"].post:disabled:not(:checked) + label {
                        display: none;
                    }

                select:disabled {
                    background: none;
                    color: #444;
                }

                select.post:disabled {
                    font-size: 12pt;
                    border: none;
                    box-shadow: none;
                    color: red;
                    background: none;
                    appearance: none;
                    -webkit-appearance: none;
                    -moz-appearance: none;
                }

                select.post:disabled::-ms-expand {
                    display: none;
                }

                input[type="text"]:focus {
                    box-shadow: 0.1em 0.1em 1em #ccc;
                    color: black;
                }

        td, th {
            padding: 2pt 4pt 2pt 4pt;
            vertical-align: top;
        }

        small {
            font-weight: normal;
        }

        table {
            border-collapse: collapse;
        }

            table.bordered {
                margin-top: 1em;
            }

                table.bordered th {
                    background-color: #F0F0F0;
                    border: solid 1pt #AAAAAA;
                }

                table.bordered td {
                    border: solid 1pt #CCCCCC;
                }

            table.centered td, .matrix .td {
                text-align: center;
            }

            table.data td {
                text-align: right;
            }

                table.data td:first-child {
                    text-align: left;
                    padding-left: 0;
                }

        .matrix {
            display: inline-table;
        }

            .matrix .tr {
                display: table-row;
            }

            .matrix .td {
                white-space: nowrap;
                padding: 0 2pt 0 2pt;
                min-width: 10pt;
                display: table-cell;
                font-size: 10pt;
            }

                .matrix .td:first-child,
                .matrix .td:last-child {
                    width: 0.75pt;
                    min-width: 0.75pt;
                    max-width: 0.75pt;
                    padding: 0 1pt 0 1pt;
                }

                .matrix .td:first-child {
                    border-left: solid 1pt black;
                }

                .matrix .td:last-child {
                    border-right: solid 1pt black;
                }

            .matrix .tr:first-child .td:first-child,
            .matrix .tr:first-child .td:last-child {
                border-top: solid 1pt black;
            }

            .matrix .tr:last-child .td:first-child,
            .matrix .tr:last-child .td:last-child {
                border-bottom: solid 1pt black;
            }

        .block {
            display: inline-block;
            vertical-align: middle;
            padding-left: 4pt;
            margin-left: -1pt;
            border-left: solid 1pt #80b0e8;
            background: linear-gradient(to right, rgba(0, 192, 255, 0.06), rgba(0, 192, 255, 0.03));
        }

            .block .block {
                background: linear-gradient(to right, rgba(0, 192, 255, 0.04), rgba(0, 192, 255, 0.02));
            }

        .dvcs:has(.block):not(.block *) {
            display: inline-block;
            border-left: solid 1pt #80b0e8;
            padding-left: 0;
            margin-left: 3pt;
        }

            .dvcs:has(.block):not(.block *)::before {
                content: " 🞀";
                font-size: 9pt;
                color: #90c4f0;
                margin-left: -4.5pt;
            }

        .arr {
            color: #90c4f0;
        }

        .r0, .r1, .r2, .r3,
        .o0, .o1, .o2, .o3,
        .b1, .b2, .b3,
        .c1, .c2, .c3, .c4,
        .c5, .c6, .c7, .c8 {
            display: inline-block;
        }

        .r0, .r1, .r2, .r3 {
            margin-top: -1.5pt;
            margin-right: 1.5pt;
            vertical-align: top;
            background-repeat: no-repeat;
            background-size: cover;
            background-position: right top;
        }

        .o0, .o1, .o2, .o3 {
            border-top: solid 0.75pt;
            line-height: 130%;
            vertical-align: middle;
            margin-top: 0.75pt;
            padding-top: 1.25pt;
            padding-left: 1pt;
            padding-right: 1pt;
        }

        .r {
            font-family: 'Times New Roman', Times, serif;
            font-size: 150%;
            display: inline-block;
            vertical-align: top;
            margin-left: -9.5pt;
            position: relative;
            top: 1pt;
        }

        .r0 {
            content: "";
            background-image: url("data: image/svg+xml;base64,PHN2ZyB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDEwIDIwIiBoZWlnaHQ9IjE1cHQiIHdpZHRoPSIxMHB4Ij4NCiAgPHBvbHlsaW5lIHBvaW50cz0iMCwxMyAyLDEyIDUsMTkgOSwwIiBzdHlsZT0ic3Ryb2tlOmJsYWNrOyBzdHJva2Utd2lkdGg6MC42cHQ7IHN0cm9rZS1saW5lam9pbjpyb3VuZDsgc3Ryb2tlLWxpbmVjYXA6cm91bmQ7IGZpbGw6bm9uZSIgLz4NCiAgPGxpbmUgeDE9IjIuMiIgeTE9IjEyLjMiIHgyPSI0LjYiIHkyPSIxOC43IiBzdHlsZT0ic3Ryb2tlOmJsYWNrOyBzdHJva2Utd2lkdGg6MC44cHQ7IHN0cm9rZS1saW5lY2FwOnJvdW5kOyIgLz4NCjwvc3ZnPg==");
            width: 8pt;
            height: 16pt;
            margin-left: -8pt;
        }

        .r1 {
            content: "";
            background-image: url("data: image/svg+xml;base64,PHN2ZyB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDE1IDQwIiBoZWlnaHQ9IjMwcHQiIHdpZHRoPSIxNXB4Ij4NCiAgPHBvbHlsaW5lIHBvaW50cz0iMSwyNiAzLDI0IDgsMzggMTQsMCIgc3R5bGU9InN0cm9rZTpibGFjazsgc3Ryb2tlLXdpZHRoOjAuNnB0OyBzdHJva2UtbGluZWpvaW46cm91bmQ7IHN0cm9rZS1saW5lY2FwOnJvdW5kOyBmaWxsOm5vbmUiIC8+DQogIDxsaW5lIHgxPSIzLjIiIHkxPSIyNC40IiB4Mj0iNy42IiB5Mj0iMzcuNiIgc3R5bGU9InN0cm9rZTpibGFjazsgc3Ryb2tlLXdpZHRoOjFwdDsgc3Ryb2tlLWxpbmVjYXA6cm91bmQ7IiAvPg0KPC9zdmc+");
            width: 12pt;
            height: 32pt;
            margin-left: -12pt;
        }

        .r2 {
            content: "";
            background-image: url("data: image/svg+xml;base64,PHN2ZyB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDIwIDYwIiBoZWlnaHQ9IjQ1cHQiIHdpZHRoPSIyMHB4Ij4NCiAgPHBvbHlsaW5lIHBvaW50cz0iMiwzNyA1LDM0IDExLDU1IDE5LDAiIHN0eWxlPSJzdHJva2U6YmxhY2s7IHN0cm9rZS13aWR0aDowLjZwdDsgc3Ryb2tlLWxpbmVqb2luOnJvdW5kOyBzdHJva2UtbGluZWNhcDpyb3VuZDsgZmlsbDpub25lIiAvPg0KICA8bGluZSB4MT0iNS4xIiB5MT0iMzQuNiIgeDI9IjEwLjYiIHkyPSI1NC40IiBzdHlsZT0ic3Ryb2tlOmJsYWNrOyBzdHJva2Utd2lkdGg6MS4ycHQ7IHN0cm9rZS1saW5lY2FwOnJvdW5kOyIgLz4NCjwvc3ZnPg==");
            width: 16pt;
            height: 48pt;
            margin-left: -16pt;
        }

        .r3 {
            content: "";
            background-image: url("data: image/svg+xml;base64,PHN2ZyB4bWxuczpzdmc9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDI1IDgwIiBoZWlnaHQ9IjYwcHQiIHdpZHRoPSIyNXB4Ij4NCiAgPHBvbHlsaW5lIHBvaW50cz0iMyw1MCA3LDQ2IDE1LDc0IDI0LDAiIHN0eWxlPSJzdHJva2U6YmxhY2s7IHN0cm9rZS13aWR0aDowLjZwdDsgc3Ryb2tlLWxpbmVqb2luOnJvdW5kOyBzdHJva2UtbGluZWNhcDpyb3VuZDsgZmlsbDpub25lIiAvPg0KICA8bGluZSB4MT0iNy4xIiB5MT0iNDYuOCIgeDI9IjE0LjUiIHkyPSI3My4yIiBzdHlsZT0ic3Ryb2tlOmJsYWNrOyBzdHJva2Utd2lkdGg6MS4ycHQ7IHN0cm9rZS1saW5lY2FwOnJvdW5kOyIgLz4NCjwvc3ZnPg==");
            width: 19pt;
            height: 62pt;
            margin-left: -19pt;
        }

        .nth {
            position: relative;
            bottom: 1pt;
        }

        .eq small.nth {font-size: 70%;}
        .dvr small {font-size: 70%;}
        .dvr small var {font-size: 105%;}
        sup.raised {vertical-align: top;}
        sup .r0, sup .r1, sup .r2, sup .r3 {
            zoom: 0.7;
            -moz-transform: scale(0.7);
            -webkit-transform: scale(0.7);
            transform: scale(0.7);
            transform-origin: top right;
            max-height: none;
        }

        sup .r0 { margin-left: -5pt; }
        sup .r1 { margin-left: -11pt; }
        sup .r2 { margin-left: -13pt; }
        sup .r3 { margin-left: -16pt; }

        .b1, .b2, .b3, .c1, .c2, .c3, .c4, .c5, .c6, .c7, .c8 {
            vertical-align: middle;
            font-weight: 100;
            font-stretch: ultra-condensed;
        }

        .b2, .b3, .c2, .c3, .c4, .c5, .c6, .c7, .c8 {
            font-family: 'Jost* Hairline', sans-serif;
        }

        .b0, .b1, .c1 {
            font-family: 'Jost* Thin', sans-serif;
        }

        .b0 {
            font-size: 120%;
            font-weight: 600;
            padding: 0 1pt 0 1pt;
        }

        .b1 {
            font-size: 240%;
            margin-top: -3pt;
            margin-left: -1pt;
            margin-right: -1pt;
        }

        .b2 {
            font-size: 370%;
            margin-top: -5pt;
            margin-left: -3pt;
            margin-right: -3pt;
        }

        .b3 {
            font-size: 520%;
            margin-top: -8pt;
            margin-left: -5pt;
            margin-right: -5pt;
        }

        .c1 {
            font-size: 240%;
            margin-top: -4pt;
        }

        .c2 {
            font-size: 360%;
            margin-top: -6pt;
            margin-left: -2.5pt;
            margin-right: -0.5pt;
        }

        .c3 {
            font-size: 480%;
            margin-top: -8pt;
            margin-left: -3pt;
            margin-right: -1pt;
        }

        .c4 {
            font-size: 600%;
            margin-top: -10pt;
            margin-left: -4pt;
            margin-right: -2pt;
            transform: scaleX(0.9);
        }

        .c5 {
            font-size: 710%;
            margin-top: -11.5pt;
            margin-left: -6pt;
            margin-right: -4pt;
            transform: scaleX(0.8);
        }

        .c6 {
            font-size: 820%;
            margin-top: -13pt;
            margin-left: -7pt;
            margin-right: -5pt;
            transform: scaleX(0.7);
        }

        .c7 {
            font-size: 930%;
            margin-top: -14.5pt;
            margin-left: -8pt;
            margin-right: -6pt;
            transform: scaleX(0.6);
        }

        .c8 {
            font-size: 1040%;
            margin-top: -16pt;
            margin-left: -9pt;
            margin-right: -7pt;
            transform: scaleX(0.5);
        }

        .dvc, .dvr, .dvs {
            display: inline-block;
            vertical-align: middle;
            white-space: nowrap;
        }

        .dvc {
            padding-left: 2pt;
            padding-right: 2pt;
            text-align: center;
            line-height: 110%;
        }

        .dvr {
            text-align: center;
            line-height: 110%;
            position: relative;
            top: -3pt;
        }

        .dvs {
            text-align: left;
            line-height: 110%;
        }

        .dvl {
            display: block;
            border-bottom: solid 1pt black;
            margin-top: 1pt;
            margin-bottom: 1pt;
        }

        .nary {
            color: #C080F0;
            font-size: 240%;
            font-family: Georgia Pro Light, serif;
            font-weight: 200;
            line-height: 70%;
            display: block;
            margin: 0 1pt 2.5pt 1pt;
        }

            .nary em {
                display: block;
                transform: scaleX(0.7) rotate(7deg);
            }

        .dvc.down {
            position: relative;
            top: 0.5em;
        }

        .dvc.up {
            position: relative;
            bottom: 0.6em;
        }

        .low {
            font-size: 70%;
            display: inline-block;
            position: relative;
            top: 1.2em;
        }

        .cond {
            color: #E000D0;
        }

        .err {
            color: Crimson;
            background-color: #FEE;
        }

        .ok {
            color: Green;
            background-color: #F0FFF0;
        }

        .ref {
            float: right;
            margin-left: 18pt;
            color: Green;
            background-color: #F8FFF0;
            margin-top: 0;
            margin-bottom: 0;
        }

        .side {
            float: right;
            max-width: 50%;
        }

        .plot {
            max-width: 100%
        }

        .indent {
            border-left: 0.75pt solid #dddddd;
            padding-left: 2em;
        }

        span.indent {
            display: inline-block;
        }

        .fold {
            height: 2.4em;
            overflow: hidden;
        }

        .unfold {
            height: auto;
            overflow: auto;
        }

            .fold > :first-child, .unfold > :first-child {
                cursor: pointer;
            }

                .fold > :first-child:hover, .unfold > :first-child:hover {
                    color: #0066bb;
                    text-decoration: underline;
                }

                .fold > :first-child::after {
                    content: " ... ▼";
                    font-size: 80%;
                }

                .unfold > :first-child::after {
                    content: " ▲";
                    font-size: 80%;
                }

        .vec {
            font-family: 'Cambria Math', serif;
            color: #8af;
            font-style: normal;
            display: inline-block;
            vertical-align: 2pt;
            margin-left: 3pt;
            margin-right: -7pt;
        }

        small .vec, sup .vec {
            margin-left: 2pt;
            margin-right: -6pt;
        }

        #Units {
            float: right;
        }

        @media screen {
            .no-screen {
                display: none;
            }
        }

        @media print {
            .side {
                zoom: 0.8;
                -moz-transform: scale(0.8);
            }

            body {
                margin: 0;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }

            .no-print {
                display: none;
            }
        }

        @page {
            size: A4 portrait;
            margin-left: 20mm;
            margin-right: 10mm;
            margin-top: 10mm;
            margin-bottom: 10mm;
            -webkit-print-color-adjust: exact;
            print-color-adjust: exact;
        }

        .value {
            position: relative;
            background-color: #f4fbff;
            border-radius: 3pt;
        }

            .value:after {
                content: "";
                position: absolute;
                left: 100%;
                top: -100%;
                transform: translateY(-50%);
                margin-left: 2pt;
                height: 16pt;
                line-height: 16pt;
                vertical-align: middle;
                width: fit-content;
                white-space: nowrap;
                min-width: 10pt;
                z-index: 1;
                padding: 0 6pt 0 6pt;
                border-radius: 6pt 6pt 6pt 0;
                background: #000;
                color: #fff;
                font-family: 'Segoe UI', sans-serif;
                font-style: normal;
                font-size: 10pt;
                text-align: center;
                display: none;
                opacity: 0;
                transition: opacity 2s;
                user-select: none;
                -webkit-user-select: none;
                -ms-user-select: none;
                -moz-user-select: none;
            }

            .value:hover:after {
                content: attr(data-value);
                display: block;
                opacity: 1;
            }

        .errorHeader {
            color: white;
            background-color: crimson;
            font-size: 10pt;
            position: fixed;
            top: 0;
            left: 0;
            margin-top: 0;
            width: 100vw;
            max-width: 100%;
            height: 1.8em;
            line-height: 1.2em;
            padding-left: 6pt;
            overflow-x: hidden;
        }

        .roundBox {
            background-color: #fee;
            color: crimson;
            font-size: 9pt;
            font-weight: bold;
            text-decoration: none;
            text-align: center;
            cursor: pointer;
            display: inline-block;
            border-radius: 4pt;
            min-width: 1.1em;
            padding-left: 2pt;
            padding-right: 2pt;
            margin-top: 2pt;
        }

            .roundBox:hover {
                background-color: white;
            }

        .lineLink {
            background: none;
            color: #b0e0ff;
            font-family: Calibri, sans-serif;
            font-size: 10pt;
            font-weight: bold;
            text-decoration: none;
            text-align: left;
            display: inline-block;
            position: absolute;
            left: 0;
            width: 2em;
            height: 4em;
            z-index: 1;
        }

            .lineLink:hover {
                background: none;
                color: #09e;
            }
    </style>
</head>
<body>
    <script>
        var contextMenu = false;
        function getVerticalPosition(line) { return document.querySelector("[data-text='" + line + "']").getBoundingClientRect().top; }
        function isNumeric(s) { return s.match(/^-?\d+(?:\.\d+)?$/); }
        if (window.jQuery) {
            function getHtmlWithInput() {
                $("input[type=text]").each(function () {
                    $(this).attr("value", $(this).val());
                });
                $("input[type=hidden]").each(function () {
                    $(this).attr("value", $(this).val());
                });
                $("textarea").each(function () {
                    $(this).html($(this).val());
                });
                $("input[type=radio]").each(function () {
                    if (this.checked)
                        $(this).attr("checked", "checked");
                    else
                        $(this).removeAttr("checked");
                });
                $("input[type=checkbox]").each(function () {
                    if (this.checked)
                        $(this).attr("checked", "checked");
                    else
                        $(this).removeAttr("checked");
                });
                $("select option").each(function () {
                    if (this.selected) {
                        $(this).attr("selected", "true");
                    }
                    else
                        $(this).removeAttr("selected");
                });
                return document.body.outerHTML;
            }

            function getTargetId(element) {
                var id = $(element).attr("name");
                if (id != null && id.length > 0)
                    return id;

                return $(element).data("target");
            }

            function getValue(id, source) {
                var value = "";
                var target = $("#" + id + " input");
                var domObj = target.get(0);
                if (domObj == null || domObj.Length == 0) {
                    target = $("#" + id + " .eq u");
                    target.each(function () {
                        value += $(this).text() + ";";
                    });
                    $(source).prop('disabled', true);
                }
                else {
                    target.each(function () {
                        value += $(this).val() + ";";
                    });
                }
                if (value.length > 1) {
                    value = value.slice(0, -1);
                }
                return value;
            }

            $(document).ready(function () {

                $(".dvcs:has(.block) > :first-child").html("&hairsp;");

                $("#Units").change(function () { $(".Units").text($(this).val()); });

                $(".fold > :first-child").click(function () {
                    if ($(this).parent().hasClass("fold")) {
                        $(this).parent().removeClass("fold").addClass("unfold");
                    }
                    else {
                        $(this).parent().removeClass("unfold").addClass("fold");
                    }
                });

                $("select").each(function (index) {
                    if ($(this).prop("id") != "Units") {
                        var id = getTargetId(this);
                        if (id != null && id.length > 0) {
                            var value = getValue(id, this);
                            $(this).val(value);
                        }
                    }

                });

                $("select").change(function () {
                    var id = getTargetId(this);
                    if (id != null && id.length > 0) {
                        var target = $("#" + id + " input");
                        if (target != null) {
                            var values = $(this).val().split(";");
                            target.each(function (index) {
                                $(this).val(values[index]);
                            });
                        }
                    }
                });

                $("input:radio, input:checkbox").each(function (index) {
                    var id = getTargetId(this);
                    if (id != null && id.length > 0) {
                        var value = getValue(id, this);
                        $(this).prop("checked", $(this).val() == value);
                    }
                });

                $("input:radio, input:checkbox").change(function () {
                    var id = getTargetId(this);
                    if (id != null && id.length > 0) {
                        var target = $("#" + id + " input");
                        if (target != null) {
                            if ($(this).prop("checked")) {
                                var values = $(this).val().split(";");
                                target.each(function (index) {
                                    $(this).val(values[index]);
                                });
                            }
                            else if ($(this).prop("type") == "checkbox") {
                                target.each(function () {
                                    $(this).val("0");
                                });
                            }
                        }
                    }
                });

                $(".line:not(style, script)").each(function () {
                    var line = $(this).prop("id").split("-")[1];
                    var $lineLink = $('<a class="lineLink" href="#0" data-text="' + line + '" title="Code line ' + line + '">&larr;</a>');
                    $(this).append($lineLink);
                    $lineLink.hide();
                    $(this).hover(function () {
                        $(".lineLink").hide();
                        $lineLink.show();
                    });
                    $(window).scroll(function () {
                        $lineLink.hide();
                    });
                });

                $("body").mouseleave(function () {
                    $(".lineLink").hide();
                });

                $(".roundBox").click(function () {
                    var line = $(this).data("line");
                    var e = document.getElementById("line-" + line);
                    if (e) {
                        window.scrollTo(0, e.offsetTop - $(this).outerHeight() - 20);
                    }
                });
                $(".money").each(function () { $(this).text(Number(($(this).text())).toFixed(2)); });

                $("input").change(function() {
                    var e = $(this);
                    var s = e.val();
                    if (isNumeric(s)) {
                        e.css("color", "black");
                        e.removeAttr("title");
                    } else {
                        e.css("color", "red");
                        e.attr("title", "Invalid number");
                    }
                });

                $("a").click(function () {
                    chrome.webview.postMessage('clicked');
                });

                window.addEventListener('click', () => {
                    chrome.webview.postMessage('focused');
                });
            });
        }
        document.oncontextmenu = function () { contextMenu = true; };
        document.onmousedown = function () { contextMenu = false; };
    </script><h3 id="line-1" class="line">Calculations<a class="lineLink" href="#0" data-text="1" title="Code line 1" style="display: none;">←</a></h3> 
<p id="line-2" class="line">Use this file with Calcpad 7.1.9 <a class="lineLink" href="#0" data-text="2" title="Code line 2" style="display: none;">←</a></p>
<p id="line-3" class="line">&nbsp;<a class="lineLink" href="#0" data-text="3" title="Code line 3" style="display: none;">←</a></p>
<h4 id="line-4" class="line">Unit Definitions<a class="lineLink" href="#0" data-text="4" title="Code line 4" style="display: none;">←</a></h4> 
<p id="line-5" class="line">We operate in the low current domain so we define fX units. <a class="lineLink" href="#0" data-text="5" title="Code line 5" style="display: none;">←</a></p>
<p id="line-6" class="line"><span class="eq" id="eq-0"><i>ec</i> = 1.6 · 10<sup>-19</sup> <i>C</i> = 1.6×10<sup>-19</sup> <i>C</i></span><a class="lineLink" href="#0" data-text="6" title="Code line 6" style="display: none;">←</a></p>
<p id="line-7" class="line"><span class="eq" id="eq-1"><i>fA</i> = 0.001 <i>pA</i></span><a class="lineLink" href="#0" data-text="7" title="Code line 7" style="display: none;">←</a></p>
<p id="line-8" class="line"><span class="eq" id="eq-2"><i>fC</i> = 0.001 <i>pC</i></span><a class="lineLink" href="#0" data-text="8" title="Code line 8" style="display: none;">←</a></p>
<p id="line-9" class="line"><span class="eq" id="eq-3"><i>fF</i> = 0.001 <i>pF</i></span><a class="lineLink" href="#0" data-text="9" title="Code line 9" style="display: none;">←</a></p>
<p id="line-10" class="line">&nbsp;<a class="lineLink" href="#0" data-text="10" title="Code line 10" style="display: none;">←</a></p>
<h4 id="line-11" class="line">Photo Current Calculation<a class="lineLink" href="#0" data-text="11" title="Code line 11" style="display: none;">←</a></h4> 
<p id="line-12" class="line">The desired full-well capacity is defined. All calculations in electrons since QE cannot be estimated and will be poor due to <i>metal5</i> and lack of AR-coating and passivation. <a class="lineLink" href="#0" data-text="12" title="Code line 12" style="display: none;">←</a></p>
<p id="line-13" class="line"><span class="eq" id="eq-4"><var>N</var><sub>WELL</sub> = 200000</span><a class="lineLink" href="#0" data-text="13" title="Code line 13" style="display: none;">←</a></p>
<p id="line-14" class="line"><span class="eq" id="eq-5"><var>C</var><sub>WELL</sub> = <var>N</var><sub>WELL</sub> · 1 <i>ec</i> = 200000 · 1 <i>ec</i> = 32.04 <i>fC</i></span><a class="lineLink" href="#0" data-text="14" title="Code line 14" style="display: none;">←</a></p>
<p id="line-15" class="line">Typical integration time to fill the well from experience with similar test setups. <a class="lineLink" href="#0" data-text="15" title="Code line 15" style="display: none;">←</a></p>
<p id="line-16" class="line"><span class="eq" id="eq-6"><var>t</var><sub>MAX</sub> = 1 <i>s</i></span><a class="lineLink" href="#0" data-text="16" title="Code line 16" style="display: none;">←</a></p>
<p id="line-17" class="line">Resulting photo current for full well within one second: <a class="lineLink" href="#0" data-text="17" title="Code line 17" style="display: none;">←</a></p>
<p id="line-18" class="line"><span class="eq" id="eq-7"><var>I</var><sub>PHOTO</sub> = <span class="dvc"><var>C</var><sub>WELL</sub><span class="dvl"></span><var>t</var><sub>MAX</sub></span> = <span class="dvc">32.04 <i>fC</i><span class="dvl"></span>1 <i>s</i></span> = 32.04 <i>fA</i></span><a class="lineLink" href="#0" data-text="18" title="Code line 18" style="">←</a></p>
<p id="line-19" class="line">&nbsp;<a class="lineLink" href="#0" data-text="19" title="Code line 19" style="display: none;">←</a></p>
<h4 id="line-20" class="line">Diode Voltage and Sensitivity<a class="lineLink" href="#0" data-text="20" title="Code line 20" style="display: none;">←</a></h4> 
<p id="line-21" class="line">Diode capacitance based on size. <a class="lineLink" href="#0" data-text="21" title="Code line 21" style="display: none;">←</a></p>
<p id="line-22" class="line"><span class="eq" id="eq-8"><var>CJ</var><sub>ND2PS</sub> = 1 <span class="dvc"><i>fF</i><span class="dvl"></span><i>μm</i><sup class="unit">2</sup></span></span><a class="lineLink" href="#0" data-text="22" title="Code line 22" style="display: none;">←</a></p>
<p id="line-23" class="line"><span class="eq" id="eq-9"><var>W</var><sub>D</sub> = 12 <i>μm</i></span><a class="lineLink" href="#0" data-text="23" title="Code line 23" style="display: none;">←</a></p>
<p id="line-24" class="line"><span class="eq" id="eq-10"><var>L</var><sub>D</sub> = 10 <i>μm</i></span><a class="lineLink" href="#0" data-text="24" title="Code line 24" style="display: none;">←</a></p>
<p id="line-25" class="line"><span class="eq" id="eq-11"><var>C</var><sub>D</sub> = <var>CJ</var><sub>ND2PS</sub> · <var>W</var><sub>D</sub> · <var>L</var><sub>D</sub> = 1 <i>fF</i><i class="unit"> ∕ </i><i>μm</i><sup class="unit">2</sup> · 12 <i>μm</i> · 10 <i>μm</i> = 120 <i>fF</i></span><a class="lineLink" href="#0" data-text="25" title="Code line 25" style="display: none;">←</a></p>
<p id="line-26" class="line">Resulting diode voltage at full well. <a class="lineLink" href="#0" data-text="26" title="Code line 26" style="display: none;">←</a></p>
<p id="line-27" class="line"><span class="eq" id="eq-12"><var>V</var><sub>D</sub> = <span class="dvc"><var>I</var><sub>PHOTO</sub><span class="dvl"></span><var>C</var><sub>D</sub></span> · <var>t</var><sub>MAX</sub> = <span class="dvc">32.04 <i>fA</i><span class="dvl"></span>120 <i>fF</i></span> · 1 <i>s</i> = 0.267 <i>V</i></span><a class="lineLink" href="#0" data-text="27" title="Code line 27" style="display: none;">←</a></p>
<p id="line-28" class="line">Sensitivity assuming unity gain source follower. <a class="lineLink" href="#0" data-text="28" title="Code line 28" style="display: none;">←</a></p>
<p id="line-29" class="line"><span class="eq" id="eq-13"><var>B</var> = <span class="dvc"><var>V</var><sub>D</sub><span class="dvl"></span><var>C</var><sub>WELL</sub></span> = <span class="dvc">0.267 <i>V</i><span class="dvl"></span>32.04 <i>fC</i></span> = 1.34 <i>μV</i><i class="unit"> ∕ </i><i>ec</i></span><a class="lineLink" href="#0" data-text="29" title="Code line 29" style="display: none;">←</a></p>
<p id="line-30" class="line">Noise estimation from source follower simulation. <a class="lineLink" href="#0" data-text="30" title="Code line 30" style="display: none;">←</a></p>
<p id="line-31" class="line"><span class="eq" id="eq-14"><var>V</var><sub>N</sub> = 35 <i>μV</i></span><a class="lineLink" href="#0" data-text="31" title="Code line 31" style="display: none;">←</a></p>
<p id="line-32" class="line"><span class="eq" id="eq-15"><var>N</var><sub>N</sub> = <span class="dvc"><var>V</var><sub>N</sub><span class="dvl"></span><var>B</var></span> = <span class="dvc">35 <i>μV</i><span class="dvl"></span>1.34 <i>μV</i><i class="unit"> ∕ </i><i>ec</i></span> = 26.21 <i>ec</i></span><a class="lineLink" href="#0" data-text="32" title="Code line 32" style="display: none;">←</a></p>
<p id="line-33" class="line">&nbsp;<a class="lineLink" href="#0" data-text="33" title="Code line 33" style="display: none;">←</a></p>
<h4 id="line-34" class="line">Dark current estimate<a class="lineLink" href="#0" data-text="34" title="Code line 34" style="display: none;">←</a></h4> 
<p id="line-35" class="line">Diffusion method only valid around room temperature <a class="lineLink" href="#0" data-text="35" title="Code line 35" style="display: none;">←</a></p>
<p id="line-36" class="line"><span class="eq" id="eq-16"><var>kB</var> = 1.38 · 10<sup>-23</sup> <span class="dvc"><i>J</i><span class="dvl"></span><i>K</i></span> = 8.62×10<sup>-5</sup> <i>eV</i><i class="unit"> ∕ </i><i>K</i></span><a class="lineLink" href="#0" data-text="36" title="Code line 36" style="display: none;">←</a></p>
<p id="line-37" class="line"><span class="eq" id="eq-17"><var>T</var><sub>OP</sub> = 293.15 <i>K</i></span><a class="lineLink" href="#0" data-text="37" title="Code line 37" style="display: none;">←</a></p>
<p id="line-38" class="line"><span class="eq" id="eq-18"><var>T</var><sub>REF</sub> = 298.15 <i>K</i></span><a class="lineLink" href="#0" data-text="38" title="Code line 38" style="display: none;">←</a></p>
<p id="line-39" class="line">Reference temperature from GF180 spice model. <a class="lineLink" href="#0" data-text="39" title="Code line 39" style="display: none;">←</a></p>
<p id="line-40" class="line">Area and perimeter dependent current. Parameters frm GF180 diode spice model <a class="lineLink" href="#0" data-text="40" title="Code line 40" style="display: none;">←</a></p>
<p id="line-41" class="line"><span class="eq" id="eq-19"><var>I</var><sub>SA</sub> = 2.3 · 10<sup>-7</sup> <span class="dvc"><i>A</i><span class="dvl"></span><i>m</i><sup class="unit">2</sup></span> = 2.3×10<sup>-7</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i><sup class="unit">2</sup></span><a class="lineLink" href="#0" data-text="41" title="Code line 41" style="display: none;">←</a></p>
<p id="line-42" class="line"><span class="eq" id="eq-20"><var>A</var> = <var>W</var><sub>D</sub> · <var>L</var><sub>D</sub> = 12 <i>μm</i> · 10 <i>μm</i> = 120 <i>μm</i><sup class="unit">2</sup></span><a class="lineLink" href="#0" data-text="42" title="Code line 42" style="display: none;">←</a></p>
<p id="line-43" class="line"><span class="eq" id="eq-21"><var>J</var><sub>SW</sub> = 2.12 · 10<sup>-13</sup> <span class="dvc"><i>A</i><span class="dvl"></span><i>m</i></span> = 2.12×10<sup>-13</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i></span><a class="lineLink" href="#0" data-text="43" title="Code line 43" style="display: none;">←</a></p>
<p id="line-44" class="line"><span class="eq" id="eq-22"><var>P</var> = 2 · <var>W</var><sub>D</sub> + 2 · <var>L</var><sub>D</sub> = 2 · 12 <i>μm</i> + 2 · 10 <i>μm</i> = 44 <i>μm</i></span><a class="lineLink" href="#0" data-text="44" title="Code line 44" style="display: none;">←</a></p>
<p id="line-45" class="line">Total base current. <a class="lineLink" href="#0" data-text="45" title="Code line 45" style="display: none;">←</a></p>
<p id="line-46" class="line"><span class="eq" id="eq-23"><var>I</var><sub>S</sub> = <var>I</var><sub>SA</sub> · <var>A</var> + <var>J</var><sub>SW</sub> · <var>P</var> = 2.3×10<sup>-7</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i><sup class="unit">2</sup> · 120 <i>μm</i><sup class="unit">2</sup> + 2.12×10<sup>-13</sup> <i>A</i><i class="unit"> ∕ </i><i>m</i> · 44 <i>μm</i> = 3.69×10<sup>-17</sup> <i>A</i></span><a class="lineLink" href="#0" data-text="46" title="Code line 46" style="display: none;">←</a></p>
<p id="line-47" class="line">Exponential parameters <a class="lineLink" href="#0" data-text="47" title="Code line 47" style="display: none;">←</a></p>
<p id="line-48" class="line"><span class="eq" id="eq-24"><var>XTI</var> = 3</span><a class="lineLink" href="#0" data-text="48" title="Code line 48" style="display: none;">←</a></p>
<p id="line-49" class="line"><span class="eq" id="eq-25"><var>N</var> = 1.01</span><a class="lineLink" href="#0" data-text="49" title="Code line 49" style="display: none;">←</a></p>
<p id="line-50" class="line"><span class="eq" id="eq-26"><var>EA</var> = 1.17 <i>eV</i></span><a class="lineLink" href="#0" data-text="50" title="Code line 50" style="display: none;">←</a></p>
<p id="line-51" class="line">Resulting dark-current according to diffusion method: <a class="lineLink" href="#0" data-text="51" title="Code line 51" style="display: none;">←</a></p>
<p id="line-52" class="line"><span class="eq" id="eq-27"><var>I</var><sub>DARK_DIFF</sub> ( <var>T</var> )  = <var>I</var><sub>S</sub> · <span class="b1">(</span><span class="dvc"><var>T</var><span class="dvl"></span><var>T</var><sub>REF</sub></span><span class="b1">)</span><sup class="raised"><span class="dvc"><var>XTI</var><span class="dvl"></span><var>N</var></span></sup> · <var>e</var><sup><span class="dvc"><var>EA</var><span class="dvl"></span><var>N</var> · <var>kB</var> · <var>T</var></span> · <span class="b1">(</span><span class="dvc"><var>T</var><span class="dvl"></span><var>T</var><sub>REF</sub></span> − 1<span class="b1">)</span></sup></span><a class="lineLink" href="#0" data-text="52" title="Code line 52" style="display: none;">←</a></p>
<p id="line-53" class="line"><span class="eq" id="eq-28"><var>I</var><sub>DARK_DIFF</sub>  ( <var>T</var><sub>OP</sub> )  = <var>I</var><sub>DARK_DIFF</sub>  ( 293.15 <i>K</i> )  = 0.0163 <i>fA</i></span><a class="lineLink" href="#0" data-text="53" title="Code line 53" style="display: none;">←</a></p>
<p id="line-54" class="line"><span class="eq" id="eq-29"><var>I</var><sub>DARK_DIFF</sub>  ( <var>T</var><sub>OP</sub> )  = <var>I</var><sub>DARK_DIFF</sub>  ( 293.15 <i>K</i> )  = 101.46 <i>ec</i><i class="unit"> ∕ </i><i>s</i></span><a class="lineLink" href="#0" data-text="54" title="Code line 54" style="display: none;">←</a></p>
 </body></html>