.class Lcom/dpmods/anime$ValidateKeyTask;
.super Landroid/os/AsyncTask;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "ValidateKeyTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$ValidateKeyTask$100000003;
    }
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
.field private dialog:Landroid/app/Dialog;

.field private enteredKey:Ljava/lang/String;

.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/app/Dialog;Ljava/lang/String;)V
    .registers 4

    .line 534
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$ValidateKeyTask;->this$0:Lcom/dpmods/anime;

    .line 535
    iput-object p2, p0, Lcom/dpmods/anime$ValidateKeyTask;->dialog:Landroid/app/Dialog;

    .line 536
    iput-object p3, p0, Lcom/dpmods/anime$ValidateKeyTask;->enteredKey:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$ValidateKeyTask;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$ValidateKeyTask;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method

.method static synthetic access$L1000021(Lcom/dpmods/anime$ValidateKeyTask;)Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$ValidateKeyTask;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$S1000021(Lcom/dpmods/anime$ValidateKeyTask;Landroid/app/Dialog;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime$ValidateKeyTask;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method private isKeyExpired(Ljava/lang/String;)Z
    .registers 6

    .line 624
    const/4 v0, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "lifetime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_30

    .line 629
    :cond_12
    :try_start_12
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 630
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 631
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 633
    invoke-virtual {v1, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_2b

    return p1

    :catch_2b
    move-exception p1

    .line 635
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 636
    return v0

    .line 625
    :cond_30
    :goto_30
    return v0
.end method

.method private saveAsInvalid()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/dpmods/anime$ValidateKeyTask;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000001(Lcom/dpmods/anime;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 643
    const-string v1, "is_valid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v0

    .line 646
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18
    return-void
.end method


# virtual methods
.method protected bridge doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dpmods/anime$ValidateKeyTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 542
    :try_start_0
    new-instance p1, Ljava/net/URL;

    const-string v0, "https://pastebin.com/raw/BWV6SRFc"

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 544
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 545
    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 546
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 548
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 549
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    nop

    .line 553
    :goto_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_47

    .line 557
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 558
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 559
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 561
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 554
    :cond_47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_2e

    .line 561
    :catch_4b
    move-exception p1

    .line 564
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    return-object p1
.end method

.method protected bridge onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/dpmods/anime$ValidateKeyTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 572
    if-nez p1, :cond_a

    .line 573
    :try_start_2
    iget-object p1, p0, Lcom/dpmods/anime$ValidateKeyTask;->this$0:Lcom/dpmods/anime;

    const-string v0, "Network error! Check internet connection."

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$1000027(Lcom/dpmods/anime;Ljava/lang/String;)V

    .line 574
    return-void

    .line 578
    :cond_a
    iget-object v0, p0, Lcom/dpmods/anime$ValidateKeyTask;->enteredKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 579
    iget-object v0, p0, Lcom/dpmods/anime$ValidateKeyTask;->enteredKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-direct {p0, p1}, Lcom/dpmods/anime$ValidateKeyTask;->isKeyExpired(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 583
    iget-object p1, p0, Lcom/dpmods/anime$ValidateKeyTask;->this$0:Lcom/dpmods/anime;

    const-string v0, "Premium Key Valid! Welcome!"

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$1000027(Lcom/dpmods/anime;Ljava/lang/String;)V

    .line 586
    iget-object p1, p0, Lcom/dpmods/anime$ValidateKeyTask;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000001(Lcom/dpmods/anime;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 587
    const-string v0, "premium_key"

    iget-object v1, p0, Lcom/dpmods/anime$ValidateKeyTask;->enteredKey:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 588
    const-string v0, "is_valid"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 589
    const-string v0, "last_show_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 590
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 593
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/dpmods/anime$ValidateKeyTask$100000003;

    invoke-direct {v0, p0}, Lcom/dpmods/anime$ValidateKeyTask$100000003;-><init>(Lcom/dpmods/anime$ValidateKeyTask;)V

    const/16 v1, 0x5dc

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_63

    .line 608
    :cond_59
    iget-object p1, p0, Lcom/dpmods/anime$ValidateKeyTask;->this$0:Lcom/dpmods/anime;

    const-string v0, "Key Expired! Please renew."

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$1000027(Lcom/dpmods/anime;Ljava/lang/String;)V

    .line 609
    invoke-direct {p0}, Lcom/dpmods/anime$ValidateKeyTask;->saveAsInvalid()V

    :goto_63
    goto :goto_6e

    .line 613
    :cond_64
    iget-object p1, p0, Lcom/dpmods/anime$ValidateKeyTask;->this$0:Lcom/dpmods/anime;

    const-string v0, "Invalid Key! Please check your key."

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$1000027(Lcom/dpmods/anime;Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lcom/dpmods/anime$ValidateKeyTask;->saveAsInvalid()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6e} :catch_6f

    :goto_6e
    goto :goto_7a

    :catch_6f
    move-exception p1

    .line 618
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 619
    iget-object p1, p0, Lcom/dpmods/anime$ValidateKeyTask;->this$0:Lcom/dpmods/anime;

    const-string v0, "Error validating key!"

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$1000027(Lcom/dpmods/anime;Ljava/lang/String;)V

    :goto_7a
    return-void
.end method
