.class Lcom/dpmods/anime$100000017;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000017"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$100000017$100000015;,
        Lcom/dpmods/anime$100000017$100000016;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime;

.field private final synthetic val$currentDeviceID:Ljava/lang/String;

.field private final synthetic val$input:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dpmods/anime;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000017;->this$0:Lcom/dpmods/anime;

    iput-object p2, p0, Lcom/dpmods/anime$100000017;->val$input:Ljava/lang/String;

    iput-object p3, p0, Lcom/dpmods/anime$100000017;->val$currentDeviceID:Ljava/lang/String;

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/dpmods/anime$100000017$100000015;

    invoke-direct {v1, p0, p1}, Lcom/dpmods/anime$100000017$100000015;-><init>(Lcom/dpmods/anime$100000017;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    const-string v0, "DPMods_Prefs"
    const/4 v1, 0x0
    iget-object v2, p0, Lcom/dpmods/anime$100000017;->this$0:Lcom/dpmods/anime;

    invoke-static {v2}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "generated_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, ""

    const/4 v5, 0x0 # sha

    :try_start_fetch
    new-instance v6, Ljava/net/URL;
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "https://api.github.com/repos/instaboosterwesd/keyauth/contents/users/"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/dpmods/anime$100000017;->val$currentDeviceID:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v8, ".json"
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v7
    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v6
    check-cast v6, Ljava/net/HttpURLConnection;
    const-string v7, "GET"
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    const-string v7, "Authorization"
    const-string v8, "token ghp_REPLACE_WITH_YOUR_TOKEN"
    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v7
    const/16 v8, 0xc8
    if-ne v7, v8, :cond_fetch_fail
    
    new-instance v7, Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/InputStreamReader;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    move-result-object v6
    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    new-instance v6, Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :goto_read
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v8
    if-eqz v8, :cond_read_done
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :goto_read
    :cond_read_done
    new-instance v7, Lorg/json/JSONObject;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v6
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    const-string v6, "sha"
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v5
    const-string v6, "content"
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v6
    const-string v7, "\n"
    const-string v8, ""
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v6
    new-instance v7, Ljava/lang/String;
    const/4 v8, 0x0
    invoke-static {v6, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    move-result-object v6
    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V
    new-instance v6, Lorg/json/JSONObject;
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    
    const-string v7, "ban"
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :cond_check_expiry
    const-string v0, "You are BANNED!"
    invoke-direct {p0, v0}, Lcom/dpmods/anime$100000017;->showToast(Ljava/lang/String;)V
    return-void
    
    :cond_check_expiry
    const-string v7, "expiry"
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    move-result-wide v6
    cmp-long v8, v6, v2
    if-lez v8, :cond_fetch_fail # Treat as new if expired
    
    # Already verified and valid
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "device_lock"
    iget-object v4, p0, Lcom/dpmods/anime$100000017;->val$currentDeviceID:Ljava/lang/String;
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_expiry_timestamp"
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    new-instance v0, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    new-instance v1, Lcom/dpmods/anime$100000017$100000016;
    invoke-direct {v1, p0}, Lcom/dpmods/anime$100000017$100000016;-><init>(Lcom/dpmods/anime$100000017;)V
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void

    :cond_fetch_fail
    :try_end_fetch
    .catch Ljava/lang/Exception; {:try_start_fetch .. :try_end_fetch} :catch_skip

    :catch_skip
    # Verification with input key
    if-nez v1, :cond_key_missing
    const-string v0, "Get a key first!"
    invoke-direct {p0, v0}, Lcom/dpmods/anime$100000017;->showToast(Ljava/lang/String;)V
    return-void
    
    :cond_key_missing
    iget-object v4, p0, Lcom/dpmods/anime$100000017;->val$input:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :cond_key_valid
    const-string v0, "Wrong Key!"
    invoke-direct {p0, v0}, Lcom/dpmods/anime$100000017;->showToast(Ljava/lang/String;)V
    return-void

    :cond_key_valid
    const-wide v6, 0x5265c00L # 24h
    add-long v8, v2, v6
    
    # Create/Update on GitHub
    :try_start_put
    new-instance v1, Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    const-string v4, "key"
    iget-object v6, p0, Lcom/dpmods/anime$100000017;->val$input:Ljava/lang/String;
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v4, "expiry"
    invoke-virtual {v1, v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    const-string v4, "ban"
    const/4 v6, 0x0
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v1
    const/4 v4, 0x0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    move-result-object v1
    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    move-result-object v1
    
    new-instance v4, Lorg/json/JSONObject;
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    const-string v6, "message"
    const-string v7, "Update user data"
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    const-string v6, "content"
    const-string v7, "\n"
    const-string v10, ""
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    if-eqz v5, :cond_send_put
    const-string v1, "sha"
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    
    :cond_send_put
    new-instance v1, Ljava/net/URL;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "https://api.github.com/repos/instaboosterwesd/keyauth/contents/users/"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/dpmods/anime$100000017;->val$currentDeviceID:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v6, ".json"
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-direct {v1, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v1
    check-cast v1, Ljava/net/HttpURLConnection;
    const-string v5, "PUT"
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    const-string v5, "Authorization"
    const-string v6, "token ghp_REPLACE_WITH_YOUR_TOKEN"
    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    const-string v5, "Content-Type"
    const-string v6, "application/json"
    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    const/4 v5, 0x1
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v5
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    move-result-object v4
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_put
    .catch Ljava/lang/Exception; {:try_start_put .. :try_end_put} :catch_put_fail
    
    :catch_put_fail
    # Save locally and Login
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "device_lock"
    iget-object v4, p0, Lcom/dpmods/anime$100000017;->val$currentDeviceID:Ljava/lang/String;
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_expiry_timestamp"
    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    new-instance v0, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    new-instance v1, Lcom/dpmods/anime$100000017$100000016;
    invoke-direct {v1, p0}, Lcom/dpmods/anime$100000017$100000016;-><init>(Lcom/dpmods/anime$100000017;)V
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    return-void
.end method
