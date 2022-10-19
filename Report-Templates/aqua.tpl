<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  {{- if . }}
  <style>
    .align-base {
      align-self: baseline
    }

    .wrapper,
    textarea {
      overflow: auto
    }

    .grey {
      background: #D5D5D7
    }

    .flex {
      display: flex;
      align-items: center
    }

    .flex .space-between {
      justify-content: space-between
    }

    .flex-wrap {
      flex-wrap: wrap
    }

    .flex1 {
      flex: 1
    }

    .pl30 {
      padding-left: 30px !important
    }

    .pl10 {
      padding-left: 10px !important
    }

    .px10 {
      padding-left: 10px;
      padding-right: 10px
    }

    .vuln-align {
      border-right: 1px solid #8D97A1;
      padding-right: 9px;
    }

    .pitch-black {
      color: #000000
    }

    .ack-icon:hover .ack-info-tooltip {
      display: block;
    }

    .ack-info-tooltip {
      display: none;
      position: absolute;
      border: 1px solid #C4C4C4;
      border-radius: 2px;
      background: #FAFCFE;
      z-index: 999;
      padding: 18px 16px;
      transform: translateX(-50%);
      max-width: 40rem;
      margin-top: 12px;
    }

    .ack-info-tooltip:before {
      content: "";
      position: absolute;
      left: 50%;
      bottom: 100%;
      border: 10px solid transparent;
      border-bottom-color: #ddd;
      background-color: transparent;
    }

    .ack-info-tooltip:after {
      content: "";
      position: absolute;
      left: 50%;
      bottom: 100%;
      border: 9px solid transparent;
      border-bottom-color: white;
    }

    .severity {
      color: #fff;
      border-radius: 3px;
      padding: 3px 6px
    }

    .severity.unknown {
      background: #e0e0e0;
      color: #2e3e50
    }

    .severity.negligible {
      background: #D5D5D7
    }

    .severity.high {
      background: #e0443d
    }

    .severity.critical {
      background: #8b0000
    }

    .severity.medium {
      background: #f79421
    }

    .severity.low {
      background: #e1c930
    }

    .red-highlight {
      color: #DC4A4C
    }

    progress,
    sub,
    sup {
      vertical-align: baseline
    }

    button,
    hr,
    input {
      overflow: visible
    }

    [type=checkbox],
    [type=radio],
    legend {
      box-sizing: border-box;
      padding: 0
    }

    html {
      -ms-text-size-adjust: 100%;
      -webkit-text-size-adjust: 100%
    }

    article,
    aside,
    details,
    figcaption,
    figure,
    footer,
    header,
    main,
    menu,
    nav,
    section,
    summary {
      display: block
    }

    audio,
    canvas,
    progress,
    video {
      display: inline-block
    }

    audio:not([controls]) {
      display: none;
      height: 0
    }

    [hidden],
    template {
      display: none
    }

    a {
      background-color: transparent;
      -webkit-text-decoration-skip: objects
    }

    a:active,
    a:hover {
      outline-width: 0
    }

    abbr[title] {
      border-bottom: none;
      text-decoration: underline;
      text-decoration: underline dotted
    }

    b,
    strong {
      font-weight: bolder
    }

    dfn {
      font-style: italic
    }

    h1 {
      font-size: 2em;
      margin: .67em 0
    }

    mark {
      background-color: #ff0;
      color: #000
    }

    small {
      font-size: 80%
    }

    sub,
    sup {
      font-size: 75%;
      line-height: 0;
      position: relative
    }

    sub {
      bottom: -.25em
    }

    sup {
      top: -.5em
    }

    img {
      border-style: none
    }

    svg:not(:root) {
      overflow: hidden
    }

    code,
    kbd,
    pre,
    samp {
      font-family: monospace, monospace;
      font-size: 1em
    }

    figure {
      margin: 1em 40px
    }

    hr {
      box-sizing: content-box;
      height: 0
    }

    button,
    input,
    select,
    textarea {
      font: inherit;
      margin: 0
    }

    h1,
    optgroup {
      font-weight: 700
    }

    button,
    select {
      text-transform: none
    }

    [type=reset],
    [type=submit],
    button,
    html [type=button] {
      -webkit-appearance: button
    }

    [type=reset]::-moz-focus-inner,
    [type=submit]::-moz-focus-inner,
    [type=button]::-moz-focus-inner,
    button::-moz-focus-inner {
      border-style: none;
      padding: 0
    }

    [type=reset]:-moz-focusring,
    [type=submit]:-moz-focusring,
    [type=button]:-moz-focusring,
    button:-moz-focusring {
      outline: ButtonText dotted 1px
    }

    fieldset {
      border: 1px solid silver;
      margin: 0 2px;
      padding: .35em .625em .75em
    }

    legend {
      color: inherit;
      display: table;
      max-width: 100%;
      white-space: normal
    }

    .resources,
    .resources .more-info {
      display: none
    }

    [type=number]::-webkit-inner-spin-button,
    [type=number]::-webkit-outer-spin-button {
      height: auto
    }

    [type=search] {
      -webkit-appearance: textfield;
      outline-offset: -2px
    }

    [type=search]::-webkit-search-cancel-button,
    [type=search]::-webkit-search-decoration {
      -webkit-appearance: none
    }

    ::-webkit-input-placeholder {
      color: inherit;
      opacity: .54
    }

    ::-webkit-file-upload-button {
      -webkit-appearance: button;
      font: inherit
    }

    h2 {
      font-size: 1.2em
    }

    .success {
      margin: 2em auto;
      max-width: 400px;
      padding: 1em;
      font-size: 1.6em;
      background-color: #91b94f;
      color: #fff
    }

    table {
      width: 100%;
      margin: 1em auto;
      border-collapse: collapse
    }

    #summary tr:first-child td {
      padding: .75em;
      font-size: 1.5em;
      border: 1px solid #000;
      color: #fff;
      text-shadow: 1px 1px 1px #000
    }

    #summary tr:first-child td:nth-child(1) {
      background-color: #e0443d
    }

    #summary tr:first-child td:nth-child(2) {
      background-color: #f79421
    }

    #summary tr:first-child td:nth-child(3) {
      background-color: #e1c930
    }

    #summary tr:first-child td:nth-child(4) {
      background-color: #5cef97
    }

    #summary tr:first-child td:nth-child(5) {
      background-color: #1280c4
    }

    #summary tr:last-child td {
      padding-top: 4px;
      font-size: .9em;
      text-transform: uppercase
    }

    #disallow {
      text-align: left;
      max-width: 500px;
      margin: 2em auto 0;
      background-color: #e0adad;
      padding: 10px;
      border: 1px solid #e0443d
    }

    #disallow li {
      line-height: 24px
    }

    #disallow p {
      margin-bottom: 10px
    }

    .wrapper {
      height: calc(100vh - 315px)
    }

    .resources .headers span {
      font-weight: 500
    }

    .vulns,
    input[type=checkbox].group-by:checked~.wrapper .resources {
      display: block
    }

    .more-info,
    input[type=checkbox].group-by:checked~.wrapper .vulns {
      display: none
    }

    .table-data {
      margin-top: 0;
      width: calc(100% - 5px);
      text-align: left;
      background: #f9f9f9;
      border: 1px solid #1f9fba;
      border-bottom: none;
      border-right: 2px solid #1f9fba;
    }

    #cves.table-data {
      border: none
    }

    .table-data:last-child {
      border-bottom: 1px solid #1f9fba
    }

    .table-data caption {
      margin-bottom: .6em
    }

    .table-data .data-item,
    .table-data td,
    .table-data th {
      padding: 7px 10px;
      border: 1px solid #1f9fba;
      position: relative
    }

    .table-data .data-item {
      border: none;
    }

    .table-data .data-item:last-child {
      border-right: none
    }

    .table-data th {
      border: none;
      background: #fff
    }

    .more-info td,
    .more-info th {
      border: 1px solid #ccc !important
    }

    .table-data th:first-child {
      padding-left: 32px
    }

    .table-data .chevron-down,
    .table-data .chevron-right,
    .table-data a {
      text-decoration: none;
      color: #08b1d5
    }

    .table-data a:hover {
      text-decoration: underline
    }

    .table-data tr:hover {
      background: #d5d2d0
    }

    .table-data tbody tr:nth-child(even) td {
      background-color: #daf1f6
    }

    .more-info td {
      background: #fff !important;
      font-size: 14px
    }

    .more-info>td {
      background: #ececec !important
    }

    .more-info tr:hover td {
      background: #f9f9f9 !important
    }

    .more-info ul {
      list-style: none;
      text-align: left
    }

    .more-info {
      width: 100%;
      background: 0 0 !important;
      border-top: 1px solid #1f9fba
    }

    input[type=checkbox].expand:checked~.more-info {
      display: block
    }

    input[type=checkbox].expand:checked~.data-item .chevron-down {
      display: inline-block
    }

    .aqua-logo span,
    .chevron-down,
    input[type=checkbox].expand:checked~.data-item .chevron-right {
      display: none
    }

    body>p {
      margin-top: 2em
    }

    .bold {
      font-weight: 700
    }

    label.data-item {
      color: #08b1d5;
      cursor: pointer
    }

    .chevron-down,
    .chevron-right {
      font-size: 10px;
      position: relative;
      top: -2px
    }

    .aqua-logo {
      display: block;
      margin: 0 auto;
      width: 144px;
      height: 52px;
      background-repeat: no-repeat;
      background-image: url(data:image/png;base64,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)
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0
    }

    body,
    html {
      max-height: 100%;
      overflow: auto;
      font-family: "Lucida Grande", "Lucida Sans", Arial, sans-serif;
      color: #464547
    }

    .mt20 {
      margin-top: 20px
    }

    .mb10 {
      margin-bottom: 10px
    }

    .aqua-container {
      background: #ccc;
    }

    .clearfix::after {
      display: block;
      content: "";
      clear: both
    }

    .header {
      height: 50px;
      line-height: 50px;
      background: #000
    }

    .header .logo {
      width: 100px;
      margin-top: 7px;
      margin-left: 10px
    }

    .content {
      margin: 30px;
      background: #fff;
      height: calc(100vh - 110px)
    }

    .tabs {
      display: flex;
      flex-wrap: wrap;
      padding-left: 20px
    }

    .label {
      width: auto
    }

    input[type=checkbox].expand,
    input[type=radio].tab {
      display: none
    }

    input[type=radio].tab+.label {
      padding: 10px;
      color: #999;
      cursor: pointer
    }

    input[type=radio].tab:checked+.label {
      color: #2b2b2b;
      border: 1px solid #ddd;
      border-bottom: 0;
      border-radius: 3px 3px 0 0
    }

    input[type=radio].tab:checked+.label:after {
      content: "";
      position: absolute;
      height: 1px;
      width: calc(100% - 2px);
      background: #fff;
      left: 1px;
      bottom: -1px;
      z-index: 1000
    }

    input[type=radio].tab:checked+.label+.panel {
      display: block
    }

    .panel {
      display: none;
      clear: both;
      height: calc(100% - 20px);
      overflow: auto;
      border-top: 1px solid #ddd;
      padding: 20px;
      order: 99;
      width: 100%
    }

    .content>.title {
      padding: 15px 20px;
      margin-bottom: 10px;
      border-bottom: 0
    }

    .assurance-checks li,
    .title {
      border-bottom: 1px solid #ddd
    }

    .content>.title h1 {
      margin-bottom: 5px;
      font-size: 24px
    }

    .content>.title span {
      font-size: 16px
    }

    .box {
      padding: 25px 20px;
      border: 1px solid #ddd
    }

    .assurance {
      border: 1px solid #ddd;
      padding: 4px 12px;
      font-size: 13px;
    }

    .assurance .assurance-content-header {
      font-weight: bold;
      margin: 2px 0px;
    }

    .assurance .assurance-desc {
      margin: 5px 0;
    }

    .image-status {
      display: flex;
      flex-direction: row;
      align-content: space-around;
      background: #f7f7f7;
    }

    .image-status .image-status-list {
      border-right: 1px solid #ddd;
      padding-right: 20px;
    }

    .image-status .image-status-list:last-child {
      border: none
    }

    .image-status-list .image-status-title {
      padding: 0px 20px !important;
    }

    .image-status .icon-check,
    .image-status .icon-warning-triangle {
      width: 60px;
      height: 60px;
      float: left
    }

    .image-status h2,
    .image-status h5 {
      padding-left: 70px;
      margin-top: 5px
    }

    .image-status h5 {
      font-size: 14px;
      font-weight: 400
    }

    .title {
      padding: 0 0 10px;
      margin: 0;
      font-weight: 400;
      font-size: 16px
    }

    .vuln-nums {
      padding: 10px
    }

    .vuln-nums li {
      list-style: none;
      float: left;
      padding: 5px 10px;
      font-size: 12px
    }

    .vuln-nums li:last-child {
      border-right: none
    }

    .square {
      border-radius: 3px;
      width: 15px;
      height: 15px;
      display: inline-block;
      position: relative;
      top: 3px
    }

    .red {
      background: #D93639
    }

    .darkred {
      background: #7E000A
    }

    .orange {
      background: #F4862B
    }

    .yellow {
      background: #DDC037
    }

    .green {
      background: #a5cf4f
    }

    .text-alert {
      color: #e0443d;
      fill: #e0443d
    }

    .text-success {
      color: #a5cf4f;
      fill: #a5cf4f
    }

    .assurance-checks li {
      list-style: none;
      padding: 10px 5px;
      font-size: 14px
    }

    .assurance-checks .icon-warning-triangle {
      width: 20px;
      position: relative;
      top: 3px;
      margin-right: 5px
    }

    .ellipsis {
      display: inline-block;
      overflow: hidden;
      text-overflow: ellipsis;
      width: 700px;
    }

    .overflow-hidden {
      overflow: hidden
    }

    .mt10 {
      margin-top: 10px
    }

    .flex6 {
      flex: 6
    }

    .flex2 {
      flex: 2
    }

    .flex4 {
      flex: 4
    }

    .side {
      background: #07242d
    }

    .upper-case {
      text-transform: uppercase
    }

    .ub-height {
      height: 100%;
      align-items: flex-start
    }

    .ub-critical {
      background: #b50505
    }

    .ub-critical-color {
      color: #b50505
    }

    .ub-critical-fill {
      fill: #b50505
    }

    .ub-high {
      background: #ff5057
    }

    .ub-high-color {
      color: #ff5057
    }

    .ub-high-fill {
      fill: #ff5057
    }

    .ub-medium {
      background: #ff8e50
    }

    .ub-medium-color {
      color: #ff8e50
    }

    .ub-medium-fill {
      fill: #ff8e50
    }

    .ub-low {
      background: #ffbf50
    }

    .ub-low-color {
      color: #ffbf50
    }

    .ub-low-fill {
      fill: #ffbf50
    }

    .ub-info {
      background: #dadadb
    }

    .ub-info-color {
      color: #dadadb
    }

    .ub-info-fill {
      fill: #dadadb
    }

    .ub-positive {
      background: #18eaa7
    }

    .ub-positive-color {
      color: #18eaa7
    }

    .ub-positive-fill {
      fill: #18eaa7
    }

    .border-critical {
      border-color: #b50505
    }

    .border-high {
      border-color: #ff5057
    }

    .border-medium {
      border-color: #ff8e50
    }

    .border-low {
      border-color: #ffbf50
    }

    .border-info {
      border-color: #dadadb
    }

    .border-positive {
      border-color: #18eaa7
    }

    .justify-center {
      justify-content: center
    }

    .justify-between {
      justify-content: space-between
    }

    .light-grey {
      background: #f3f5f9
    }

    .grey-color {
      color: #99a1aa
    }

    .black-color {
      color: #07242d
    }

    .pd20 {
      padding: 20px
    }

    .behaviors {
      height: 25%
    }

    .behavior-item {
      background: #fff;
      box-shadow: 0 4px 12px rgba(255, 142, 41, .1);
      border-radius: 2px;
      width: 19%;
      height: 100%;
      align-items: flex-start;
      justify-content: space-around;
      flex-direction: column
    }

    .behavior-item-title {
      font-weight: 500;
      font-size: 15px;
      line-height: 15px;
      margin-left: 15px
    }

    .behavior-item-score {
      justify-content: space-around;
      width: 100%
    }

    .behavior-icon {
      width: 55px;
      height: 55px
    }

    .behavior-score {
      font-size: 60px
    }

    .behavior-score-delta {
      font-size: 10px
    }

    .border-left {
      border-left-width: 6px;
      border-left-style: solid
    }

    .finding-item {
      height: 55px;
      background: #fff
    }

    .finding-icon {
      height: 25px;
      width: 25px;
      margin: 0 10px
    }

    input[type=checkbox].group-by {
      display: inline-block
    }

    input[type=checkbox]:checked~.more-info {
      display: block
    }

    .more-info {
      display: none
    }

    input[type=checkbox] {
      display: none
    }

    input[type=checkbox]:checked~.finding-info {
      display: block
    }

    .findings {
      height: calc(100vh - 530px);
      overflow: auto
    }

    .finding-info {
      display: none
    }

    .finding-info {
      background: #fff;
      font-weight: 500;
      font-size: 14px;
      margin-top: 5px
    }

    .finding-info-data {
      font-weight: 400;
      line-height: 1.5
    }

    .finding-info-header {
      border-bottom: 1px solid;
      height: 55px;
      font-size: 15px
    }

    .risk-btn {
      width: 78px;
      height: 28px;
      text-align: center;
      line-height: 2;
      color: #fff;
      margin-left: 10px
    }
  </style>
  <title>{{- escapeXML ( index . 0 ).Target }} - Trivy Report - {{ now }} </title>
  <script>
    window.onload = function () {
      document.querySelectorAll('td.links').forEach(function (linkCell) {
        var links = [].concat.apply([], linkCell.querySelectorAll('a'));
        [].sort.apply(links, function (a, b) {
          return a.href > b.href ? 1 : -1;
        });
        links.forEach(function (link, idx) {
          if (links.length > 3 && 3 === idx) {
            var toggleLink = document.createElement('a');
            toggleLink.innerText = "Toggle more links";
            toggleLink.href = "#toggleMore";
            toggleLink.setAttribute("class", "toggle-more-links");
            linkCell.appendChild(toggleLink);
          }
          linkCell.appendChild(link);
        });
      });
      document.querySelectorAll('a.toggle-more-links').forEach(function (toggleLink) {
        toggleLink.onclick = function () {
          var expanded = toggleLink.parentElement.getAttribute("data-more-links");
          toggleLink.parentElement.setAttribute("data-more-links", "on" === expanded ? "off" : "on");
          return false;
        };
      });
    };
  </script>
</head>

<body>
  <div class="aqua-container">
    <header class="header" style="background-color:#ffffff">
      <svg width="135" height="50" viewBox="0 0 196 57" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path
          d="M29.4984 0.143616H16.3188C15.7526 0.143616 15.2097 0.367222 14.8088 0.764333L9.22118 6.31275C9.00533 6.52708 8.78949 6.7414 8.78949 7.25542C8.78949 7.25542 8.78949 8.54139 9.99766 8.54139H29.4984V0.143616Z"
          fill="#FFC900" />
        <path opacity="0.89" d="M21.0486 8.54139H29.4983V0.143616L21.0486 8.54139Z"
          fill="url(#paint0_linear_2567_377)" />
        <path d="M29.4983 0.143616L21.0486 8.54139H29.4983V0.143616Z" fill="url(#paint1_linear_2567_377)" />
        <path
          d="M37.7388 0.848751C37.4986 0.438651 36.981 0.13525 36.4764 0.143601H29.4984C29.4984 0.143601 29.4984 22.2139 29.4984 27.9043C29.4984 29.1039 30.7289 29.1039 30.7944 29.1039C31.312 29.1039 31.5279 28.8896 31.7437 28.6753L37.3304 23.1278C37.7313 22.7297 37.9518 22.1907 37.9518 21.6284V1.51029C37.9527 1.28483 37.8677 1.05937 37.7388 0.848751Z"
          fill="#FF445F" />
        <path
          d="M8.61731 29.3173V9.90712C8.61731 8.70465 7.31945 8.70465 7.31945 8.70465C6.80086 8.70465 6.58408 8.91898 6.36824 9.13424L0.766572 14.6956C0.364784 15.0946 0.145203 15.6346 0.145203 16.1987V29.3182H8.61731V29.3173Z"
          fill="#08B1D5" />
        <path opacity="0.82" d="M0.144592 29.3173L8.6167 20.9066V29.3173H0.144592Z"
          fill="url(#paint2_linear_2567_377)" />
        <path d="M0.144592 29.3173L8.6167 20.9066V29.3173H0.144592Z" fill="url(#paint3_linear_2567_377)" />
        <path
          d="M0.861252 37.433C0.447318 37.1945 0.136166 36.6796 0.144576 36.1767V29.3173C0.144576 29.3173 22.4662 29.3173 28.165 29.3173C29.376 29.3173 29.3769 30.4269 29.3769 30.491C29.3779 31.0068 29.1611 31.2212 28.9453 31.4364L23.3445 36.9969C22.9437 37.3959 22.4055 37.6223 21.8374 37.6232H1.52934C1.30135 37.6241 1.07429 37.5601 0.861252 37.433Z"
          fill="#1904DA" />
        <path
          d="M113.481 56.7875H119.466V19.8683C119.486 19.5435 119.466 19.216 119.466 18.8857C119.466 9.86165 112.118 2.54572 103.03 2.54572C93.9423 2.54572 86.5756 9.86165 86.5756 18.8866C86.5756 27.9116 93.9432 35.2266 103.031 35.2266H103.864L109.918 29.2421H103.49H103.032C97.2725 29.2421 92.6033 24.6058 92.6033 18.8866C92.6033 13.1675 97.2715 8.53114 103.031 8.53114C108.791 8.53114 113.482 13.1675 113.482 18.8866V56.7875H113.481Z"
          fill="#07242D" />
        <path
          d="M151.332 2.54663V19.0889C151.332 24.8646 146.616 29.5706 140.8 29.5706C134.983 29.5706 130.263 24.8646 130.263 19.0889V2.54663H124.431V19.0889C124.431 19.0889 124.431 19.0898 124.431 19.1019C124.431 28.0842 131.754 35.3769 140.8 35.3769C149.846 35.3769 157.176 28.1065 157.176 19.1241C157.176 19.1121 157.176 19.0889 157.176 19.0889V2.54663H151.332Z"
          fill="#07242D" />
        <path
          d="M80.6319 13.3541C74.1173 -3.73005 48.872 0.418275 48.4908 18.9368C48.5011 22.9153 49.8765 26.4828 52.276 29.3879C55.0913 32.7819 59.2512 35.0346 63.9475 35.3418C64.3081 35.365 64.6725 35.3779 65.0369 35.3779H81.613C81.613 35.3779 81.613 18.935 81.613 18.9359C81.6121 17.0403 81.2813 15.1374 80.6319 13.3541ZM75.4862 29.3758C75.4862 29.3758 67.9541 29.3758 65.05 29.3758C59.2578 29.3758 54.5624 24.6875 54.5624 18.9368C54.5624 16.054 55.7416 13.471 57.6478 11.5856L57.6497 11.5875C64.1269 5.07041 75.5273 9.64275 75.4862 18.9368C75.4862 21.8186 75.4862 29.3758 75.4862 29.3758Z"
          fill="#07242D" />
        <path
          d="M194.281 13.3531C187.766 -3.73102 162.521 0.417299 162.14 18.9358C162.15 22.9144 163.525 26.4819 165.925 29.3869C168.74 32.7809 172.9 35.0337 177.596 35.3408C177.957 35.364 178.321 35.377 178.686 35.377H195.262C195.262 35.377 195.262 18.934 195.262 18.9349C195.261 17.0394 194.93 15.1364 194.281 13.3531ZM189.135 29.3748C189.135 29.3748 181.603 29.3748 178.699 29.3748C172.907 29.3748 168.211 24.6865 168.211 18.9358C168.211 16.0531 169.39 13.47 171.297 11.5846L171.298 11.5865C177.776 5.06943 189.176 9.64177 189.135 18.9358C189.135 21.8177 189.135 29.3748 189.135 29.3748Z"
          fill="#07242D" />
        <defs>
          <linearGradient id="paint0_linear_2567_377" x1="23.5894" y1="10.2101" x2="31.6427" y2="2.09979"
            gradientUnits="userSpaceOnUse">
            <stop stop-color="#FF445F" stop-opacity="0" />
            <stop offset="1" stop-color="#FF445F" stop-opacity="0.3" />
          </linearGradient>
          <linearGradient id="paint1_linear_2567_377" x1="29.4981" y1="4.34307" x2="21.0486" y2="4.34306"
            gradientUnits="userSpaceOnUse">
            <stop stop-color="#FF445F" stop-opacity="0.4" />
            <stop offset="0.00761682" stop-color="#FF445F" stop-opacity="0.3873" />
            <stop offset="0.2406" stop-color="#FF445F" stop-opacity="0" />
          </linearGradient>
          <linearGradient id="paint2_linear_2567_377" x1="1.81734" y1="31.8327" x2="10.4298" y2="23.1992"
            gradientUnits="userSpaceOnUse">
            <stop stop-color="#1904DA" stop-opacity="0.2" />
            <stop offset="1" stop-color="#1904DA" stop-opacity="0" />
          </linearGradient>
          <linearGradient id="paint3_linear_2567_377" x1="4.3806" y1="29.3177" x2="4.3806" y2="20.9067"
            gradientUnits="userSpaceOnUse">
            <stop stop-color="#1904DA" stop-opacity="0.3" />
            <stop offset="0.00761682" stop-color="#1904DA" stop-opacity="0.2905" />
            <stop offset="0.2406" stop-color="#1904DA" stop-opacity="0" />
          </linearGradient>
        </defs>
      </svg>

    </header>
    <main class="content">
      <div class="title">
        <h1> Trivy Report - 2022-05-14 21:33:48.972924 +0200 CEST m=+2.689318335</h1>
      </div>        
      <div class="tabs">
          <input type="radio" class="tab" name="tabs-64263" id="64263-tab2" >
          <label for="64263-tab2" class="label">Vulnerabilities</label>
          <div class="panel">

          {{- $critical := 0 }}{{- $high := 0 }}{{- $medium := 0 }}{{- $low := 0 }}{{- $sumVulnerabilities :=0}}
          {{- range . }}
              {{- range .Vulnerabilities }}
              {{- if eq .Severity "CRITICAL" }}{{- $critical = add $critical 1 }}{{- end }}
              {{- if eq .Severity "HIGH" }}{{- $high = add $high 1 }}{{- end }}
              {{- if eq .Severity "MEDIUM" }}{{- $medium = add $medium 1 }}{{- end }}
              {{- if eq .Severity "LOW" }}{{- $low = add $low 1 }}{{- end }}
              {{- $sumVulnerabilities = add $sumVulnerabilities 1 }}
              {{- end }}
          {{- end }}
          {{- if ( eq $sumVulnerabilities 0 ) }}
              <h1>No Vulnerabilities found</h1>
          {{- else}}
          <input type="checkbox" id="64263-group" class="group-by" checked="false">
          <label for="64263-group" class="label">Group by resource</label>
          <div class="wrapper">

              <div class="image-status p10">
              <div>
                  <ul class="vuln-nums clearfix black-clr text-bold">
                  <li class="vuln">
                      <span class="square darkred"></span>
                      <span class="vuln-align">{{ $critical }} Critical</span>
                  </li>
                  <li class="vuln">
                      <span class="square red"></span>
                      <span class="vuln-align">{{ $high }} High</span>
                  </li>
                  <li class="vuln">
                      <span class="square orange"></span>
                      <span class="vuln-align">{{- $medium }} Medium</span>
                  </li>
                  <li class="vuln">
                      <span class="square yellow"></span>
                      <span class="vuln-align">{{- $low}} Low</span>
                  </li>
                  </ul>
              </div>
              </div>
              <div class="resources mt20">
              <div class="headers flex mb10">
                  <span class="flex1">Resource</span>
                  <span class="flex1">Type</span>
                  <span class="flex1">Class</span>
              </div>
              {{- $index := 0 -}}
              {{- range . }}
              {{- $index = add $index 1 -}}
              {{- if (gt (len .Vulnerabilities) 0) }}
              <div class="table-data flex flex-wrap"><input type="checkbox" class="expand" id="64263-expand{{- $index -}}-tab2">
                  <label for="64263-expand{{- $index -}}-tab2" class="data-item flex1">
                  <span class="chevron-right">&#9658;</span>
                  <span class="chevron-down">&#9660;</span>

                  {{ escapeXML .Target }}

                  </label>
                  <span class="flex1 data-item">{{ escapeXML .Type }}</span>
                  <span class="flex1 data-item">{{ toString .Class }}</span>
                  <div class="more-info px10">
                  <table>
                      <thead>
                      <th>Package</th>
                      <th>Vulnerability ID</th>
                      <th>Severity</th>
                      <th>Installed Version</th>
                      <th>Fixed Version</th>
                      <th>Links</th>
                      </thead>
                      <tbody>
                      {{- range .Vulnerabilities }}
                      <tr>
                          <td class="pkg-name">{{ escapeXML .PkgName }}</td>
                          <td>{{ escapeXML .VulnerabilityID }}</td>
                          <td><span class="severity {{ lower (escapeXML .Vulnerability.Severity) }}">{{ escapeXML
                              .Vulnerability.Severity }}</span></td>
                          <td class="pkg-version">{{ escapeXML .InstalledVersion }}</td>
                          <td>{{ escapeXML .FixedVersion }}</td>
                          <td class="links" data-more-links="off">
                          {{- range .Vulnerability.References }}
                          <a href={{ escapeXML . | printf "%q" }}>{{ escapeXML . }}</a>
                          {{- end }}
                          </td>
                      </tr>

                      {{- end }}
                      </tbody>
                  </table>
                  </div>
              </div>
              {{- end }}
              {{- end }}
              </div>
          </div>
          {{- end }} <!-- Items found -->
          </div> <!-- Vulnerability Panel End -->
          <input type="radio" class="tab" name="tabs-64263" id="64263-tab3" checked>
          <label for="64263-tab3" class="label">Misconfigurations</label>
          <div class="panel">

          {{- $critical := 0 }}{{- $high := 0 }}{{- $medium := 0 }}{{- $low := 0 }}{{- $sumMisconfigurations :=0}}
          {{- range . }}
              {{- range .Misconfigurations }}
              {{- if eq .Severity "CRITICAL" }}{{- $critical = add $critical 1 }}{{- end }}
              {{- if eq .Severity "HIGH" }}{{- $high = add $high 1 }}{{- end }}
              {{- if eq .Severity "MEDIUM" }}{{- $medium = add $medium 1 }}{{- end }}
              {{- if eq .Severity "LOW" }}{{- $low = add $low 1 }}{{- end }}
              {{- $sumMisconfigurations = add $sumMisconfigurations 1 }}
              {{- end }}
          {{- end }}
          {{- if ( eq $sumMisconfigurations 0 ) }}
              <h1>No Misconfigurations found</h1>
          {{- else}}
          <input type="checkbox" id="64263-group" class="group-by" checked="false">
          <label for="64263-group" class="label">Group by resource</label>
          <div class="wrapper">

              <div class="image-status p10">
              <div>
                  <ul class="vuln-nums clearfix black-clr text-bold">
                  <li class="vuln">
                      <span class="square darkred"></span>
                      <span class="vuln-align">{{ $critical }} Critical</span>
                  </li>
                  <li class="vuln">
                      <span class="square red"></span>
                      <span class="vuln-align">{{ $high }} High</span>
                  </li>
                  <li class="vuln">
                      <span class="square orange"></span>
                      <span class="vuln-align">{{- $medium }} Medium</span>
                  </li>
                  <li class="vuln">
                      <span class="square yellow"></span>
                      <span class="vuln-align">{{- $low}} Low</span>
                  </li>
                  </ul>
              </div>
              </div>
              <div class="resources mt20">
              <div class="headers flex mb10">
                  <span class="flex1">Resource</span>
                  <span class="flex1">Type</span>
                  <span class="flex1">Class</span>
              </div>
              {{- $index := 0 -}}
              {{- range . }}
              {{- $index = add $index 10 -}}
              {{- if (gt (len .Misconfigurations) 0) }}
              <div class="table-data flex flex-wrap"><input type="checkbox" class="expand" id="64263-expand{{- $index -}}-tab3">
                  <label for="64263-expand{{- $index -}}-tab3" class="data-item flex1">
                  <span class="chevron-right">&#9658;</span>
                  <span class="chevron-down">&#9660;</span>

                  {{ escapeXML .Target }}

                  </label>
                  <span class="flex1 data-item">{{ escapeXML .Type }}</span>
                  <span class="flex1 data-item">{{ toString .Class }}</span>
                  <div class="more-info px10">
                  <table>
                      <thead>
                      <th>Type</th>
                      <th>Misconf ID</th>
                      <th>Check</th>
                      <th>Severity</th>
                      <th>Message</th>
                      <th>Lines</th>
                      </thead>
                      <tbody>
                      {{- range .Misconfigurations }}
                      <tr>
                          <td class="misconf-type">{{ escapeXML .Type }}</td>
                          <td>{{ escapeXML .ID }}</td>
                          <td class="misconf-check">{{ escapeXML .Title }}</td>
                          <td><span class="severity {{ lower (escapeXML .Severity) }}">{{ escapeXML
                          .Severity }}</span></td>
                          <td class="link" data-more-links="off" style="white-space:normal;"">
                          {{ escapeXML .Message }}
                          <br>
                              <a href={{ escapeXML .PrimaryURL | printf " %q" }}>{{ escapeXML .PrimaryURL }}</a>
                          </br>
                          </td>
                          <td>{{ .CauseMetadata.StartLine }}-{{ .CauseMetadata.EndLine }}</td>
                      </tr>

                      {{- end }}
                      </tbody>
                  </table>
                  </div>
              </div>
              {{- end }}
              {{- end }}
              </div>
              </div>
              {{- end }}
          </div> <!-- Missconfigurations Panel end -->
          <input type="radio" class="tab" name="tabs-64263" id="64263-tab4">
          <label for="64263-tab4" class="label">Secrets</label>
          <div class="panel">

          {{- $critical := 0 }}{{- $high := 0 }}{{- $medium := 0 }}{{- $low := 0 }}{{- $sumSecrets :=0}}
          {{- range . }}
              {{- range .Secrets }}
              {{- if eq .Severity "CRITICAL" }}{{- $critical = add $critical 1 }}{{- end }}
              {{- if eq .Severity "HIGH" }}{{- $high = add $high 1 }}{{- end }}
              {{- if eq .Severity "MEDIUM" }}{{- $medium = add $medium 1 }}{{- end }}
              {{- if eq .Severity "LOW" }}{{- $low = add $low 1 }}{{- end }}
              {{- $sumSecrets = add $sumSecrets 1 }}
              {{- end }}
          {{- end }}
          {{- if ( eq $sumSecrets 0 ) }}
              <h1>No Secrets found</h1>
          {{- else}}
          <input type="checkbox" id="64263-group" class="group-by" checked="false">
          <label for="64263-group" class="label">Group by resource</label>
          <div class="wrapper">

              <div class="image-status p10">
              <div>
                  <ul class="vuln-nums clearfix black-clr text-bold">
                  <li class="vuln">
                      <span class="square darkred"></span>
                      <span class="vuln-align">{{ $critical }} Critical</span>
                  </li>
                  <li class="vuln">
                      <span class="square red"></span>
                      <span class="vuln-align">{{ $high }} High</span>
                  </li>
                  <li class="vuln">
                      <span class="square orange"></span>
                      <span class="vuln-align">{{- $medium }} Medium</span>
                  </li>
                  <li class="vuln">
                      <span class="square yellow"></span>
                      <span class="vuln-align">{{- $low}} Low</span>
                  </li>
                  </ul>
              </div>
              </div>
              <div class="resources mt20">
              <div class="headers flex mb10">
                  <span class="flex1">Resource</span>
                  <span class="flex1">Type</span>
                  <span class="flex1">Class</span>
              </div>
              {{- $index := 0 -}}
              {{- range . }}
              {{- $index = add $index 10 -}}
              {{- if (gt (len .Secrets) 0) }}
              <div class="table-data flex flex-wrap"><input type="checkbox" class="expand" id="64263-expand{{- $index -}}-tab4">
                  <label for="64263-expand{{- $index -}}-tab4" class="data-item flex1">
                  <span class="chevron-right">&#9658;</span>
                  <span class="chevron-down">&#9660;</span>

                  {{ escapeXML .Target }}

                  </label>
                  <span class="flex1 data-item">{{ escapeXML .Type }}</span>
                  <span class="flex1 data-item">{{ toString .Class }}</span>
                  <div class="more-info px10">
                  <table>
                      <thead>
                      <th>Category</th>
                      <th>Rule ID</th>
                      <th>Check</th>
                      <th>Severity</th>
                      <th>Match</th>
                      <th>Lines</th>
                      </thead>
                      <tbody>
                      {{- range .Secrets }}
                      <tr>
                          <td class="misconf-type">{{ escapeXML ( toString .Category ) }}</td>
                          <td>{{ escapeXML .RuleID }}</td>
                          <td class="misconf-check">{{ escapeXML .Title }}</td>
                          <td><span class="severity {{ lower (escapeXML .Severity) }}">{{ escapeXML
                          .Severity }}</span></td>
                          <td class="link" data-more-links="off" style="white-space:normal;"">
                          {{ escapeXML .Match }}
                          </td>
                          <td>{{ .StartLine }}-{{ .EndLine }}</td>
                      </tr>

                      {{- end }}
                      </tbody>
                  </table>
                  </div>
              </div>
              {{- end }}
              {{- end }}
              </div>
          </div>
              {{- end }}
          </div> <!-- Secrets Panel end -->
      </div>
    </main>
  </div>


  {{- else }} <!-- No Findings at all -->
</head>

<body>
  <h1>Trivy Returned Empty Report</h1>
  {{- end }}
</body>

</html>
