.class Lcom/dpmods/anime$JsonFetchTask;
.super Landroid/os/AsyncTask;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2a
    name = "JsonFetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private l:Lcom/dpmods/anime$OnJsonFetchListener;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime$OnJsonFetchListener;)V
    .registers 2

    .line 895
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$JsonFetchTask;->l:Lcom/dpmods/anime$OnJsonFetchListener;

    return-void
.end method


# virtual methods
.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dpmods/anime$JsonFetchTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 899
    :try_start_0
    new-instance p1, Ljava/net/URL;

    const-string v0, "https://pastebin.com/raw/BWV6SRFc"

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 900
    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 901
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_41

    .line 903
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 902
    :cond_41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_28

    .line 903
    :catch_45
    move-exception p1

    .line 904
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    return-object p1
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/dpmods/anime$JsonFetchTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 906
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/dpmods/anime$JsonFetchTask;->l:Lcom/dpmods/anime$OnJsonFetchListener;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lcom/dpmods/anime$OnJsonFetchListener;->onPostFetch(Lorg/json/JSONObject;)V

    goto :goto_11

    :cond_a
    iget-object p1, p0, Lcom/dpmods/anime$JsonFetchTask;->l:Lcom/dpmods/anime$OnJsonFetchListener;

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/dpmods/anime$OnJsonFetchListener;->onError()V

    :cond_11
    :goto_11
    return-void
.end method

.method protected onPreExecute()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 896
    iget-object v0, p0, Lcom/dpmods/anime$JsonFetchTask;->l:Lcom/dpmods/anime$OnJsonFetchListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/dpmods/anime$OnJsonFetchListener;->onPreFetch()V

    :cond_7
    return-void
.end method
