<!doctype html> {% set html_class = 'theme-next ' + theme.scheme %} {% if theme.use_motion %} {% set html_class = html_class + ' use-motion' %} {% endif %}

<html class="{{ html_class | lower }}" lang="{{ config.language }}">

<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="{{ page.lang || page.language || config.language }}">

  {% include '_scripts/third-party/analytics.swig' %} {% set container_class = "container one-collumn " %} {% if theme.sidebar.position %} {% set container_class = container_class + 'sidebar-position-' + theme.sidebar.position %} {% endif %}

  <div class="{{ container_class }} {% block page_class %}{% endblock %} ">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
    </header>

    <main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
          <div id="content" class="content">
            {% block content %}{% endblock %}
          </div>
          {% include '_partials/duoshuo-hot-articles.swig' %} {% include '_partials/comments.swig' %}
        </div>
        {% if theme.sidebar.display !== 'remove' %} {% block sidebar %}{% endblock %} {% endif %}
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        {% include '_partials/footer.swig' %} {% include '_scripts/third-party/analytics/busuanzi-counter.swig' %} {% block footer %}{% endblock %}
      </div>
    </footer>

    {% if not theme.sidebar.b2t %}
    <div class="back-to-top">
      <i class="fa fa-arrow-up"></i> {% if theme.sidebar.scrollpercent %}
      <span id="scrollpercent"><span>0</span>%</span>
      {% endif %}
    </div>
    {% endif %}

  </div>

  {% include '_scripts/vendors.swig' %} {% include '_scripts/commons.swig' %} {% set scheme_script = '_scripts/schemes/' + theme.scheme | lower + '.swig' %} {% include scheme_script %} {% block script_extra %}{% endblock %} {% include '_scripts/boostrap.swig'
  %} {% include '_scripts/third-party/comments.swig' %} {% include '_scripts/third-party/tinysou.swig' %} {% include '_scripts/third-party/localsearch.swig' %} {% include '_scripts/third-party/mathjax.swig' %} {% include '_scripts/third-party/lean-analytics.swig'
  %} {% include '_scripts/baidu-push.swig' %} {% include '_components/algolia-search/assets.swig' %} {% if theme.exturl %} {% include '_scripts/third-party/exturl.swig' %} {% endif %}

  <script type="text/javascript" color="110,80,70" opacity='0.7' count="50" src="/js/src/canvas-nest.js"></script>
</body>

</html>

<!--
浅蓝色线条
color: 线条颜色, 默认: '0,0,0' ；三个数字分别为(R,G,B)，注意用,分割
opacity: 线条透明度（0~1）, 默认: 0.5
count: 线条的总数量, 默认: 150
zIndex: 背景的z-index属性，css属性用于控制所在层的位置, 默认: -1

<script type="text/javascript" src="/js/src/canvas-nest.js" count="50" zindex="-2" opacity="1" color="0,104,183">
</script>
 -->
