className = """
    div#main
        top: 0
        left: 0
        width: 100vw
        height: 100vh
        z-index: -100
        display: flex
        position: fixed

    .hidden
        opacity: 0 !important

    video
        flex: 1 0 auto
        object-fit: cover
        width: 100vw
        height: 100vh
        top: 0
        left: 0
        position: fixed
        z-index: 0
        transition: opacity 2s
        opacity: 1
"""

play = (urls, index) ->
    video = document.getElementById("video" + (index % 2))
    video.setAttribute("src", urls[index])
    video.autoplay = true
    video.load()

    console.log("Playing now index", index, urls)

render = (urls) ->
    """
    <div id="main">
        <video id="video0" playsInline autoPlay/>
        <video id="video1" playsInline autoPlay/>
    </div>
    """

init = async (dispatch) ->
    await fetch("http://127.0.0.1:41417/https://bzamayo.com/extras/apple-tv-screensavers.json")
        .then((res) -> res.json())
        .then((res) -> dispatch(res.data))

    listen = (el1, el2) ->
        el1.addEventListener('canplay', (e) ->
            el1.className = ""
            console.log("Called canplay", e, "Next in", (e.target.duration - 5))

            setTimeout(() ->
                el2.className = "hidden"
                el2.setAttribute("src", "")
            , 5000)

            setTimeout(() ->
                dispatch(null)
            , (e.target.duration - 5) * 1000)
        , false)

    video0 = document.getElementById("video0")
    video1 = document.getElementById("video1")

    listen(video0, video1)
    listen(video1, video0)

updateState = (data, previousState) ->
    if data
        urls = []
        for place in data
            urls = urls.concat(place?.screensavers?.map((u) -> u?.videoURL))

        # Shuffle urls
        for i in [urls.length - 1..1] by -1
            j = Math.floor(Math.random() * (i + 1))
            [urls[i], urls[j]] = [urls[j], urls[i]]

        if urls?.length
            play(urls, 0)

        index: 0
        urls

    play(previousState.urls, previousState.index + 1)
    index: previousState.index + 1
    previousState

initialData =
    urls: []
    index: 0
