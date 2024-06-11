<template>
    <!--srcviewsindexvuehtmlStart-->

    <div id="defaultId1">
    </div>
    <!--srcviewsindexvuehtmlEnd-->

    <div class="main-content">
        <div style="width:70%; margin:20px auto">
            <el-carousel height="400px" style="border-radius:15px">
                <el-carousel-item v-for="item in carousel" :key="item">
                    <img :src="item" alt="" style="width :100%; height:400px; border-radius: 10px">

                </el-carousel-item>
            </el-carousel>
        </div>
    </div>
</template>

<script>
    export default {
        name: "Index",
        data() {
            return {
                // 版本号
                version: "3.8.7",
                carousel: [
                    require('@/assets/images/jielisai.jpg'),
                    require('@/assets/images/shejian.jpg'),
                    require('@/assets/images/baolingqiu.jpg'),
                ]
            };
        },
        methods: {
            goTarget(href) {
                window.open(href, "_blank");
            }
        }
    };
</script>

<style scoped lang="scss">
    .srcviewsindexvuecssStart {}

    .srcviewsindexvuecssEnd {}

    .home {
        blockquote {
            padding: 10px 20px;
            margin: 0 0 20px;
            font-size: 17.5px;
            border-left: 5px solid #eee;
        }

        hr {
            margin-top: 20px;
            margin-bottom: 20px;
            border: 0;
            border-top: 1px solid #eee;
        }

        .col-item {
            margin-bottom: 20px;
        }

        ul {
            padding: 0;
            margin: 0;
        }

        font-family: "open sans",
        "Helvetica Neue",
        Helvetica,
        Arial,
        sans-serif;
        font-size: 13px;
        color: #676a6c;
        overflow-x: hidden;

        ul {
            list-style-type: none;
        }

        h4 {
            margin-top: 0px;
        }

        h2 {
            margin-top: 10px;
            font-size: 26px;
            font-weight: 100;
        }

        p {
            margin-top: 10px;

            b {
                font-weight: 700;
            }
        }

        .update-log {
            ol {
                display: block;
                list-style-type: decimal;
                margin-block-start: 1em;
                margin-block-end: 1em;
                margin-inline-start: 0;
                margin-inline-end: 0;
                padding-inline-start: 40px;
            }
        }
    }
</style>

// srcviewsindexvueDataStart

// srcviewsindexvueDataEnd
// srcviewsindexvueMethodStart

// srcviewsindexvueMethodEnd
// srcviewsindexvueMountedStart

// srcviewsindexvueMountedEnd
// srcviewsindexvuePropsStart

// srcviewsindexvuePropsEnd
//importStart

//importEnd