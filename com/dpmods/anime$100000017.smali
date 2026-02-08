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

.method static access$0(Lcom/dpmods/anime$100000017;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000017;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/dpmods/anime$100000017;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DPMods_Prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 661
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v2, "generated_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 663
    nop

    .line 664
    if-nez v2, :cond_1d

    const-string v1, "Get a key first!"

    goto :goto_27

    .line 665
    :cond_1d
    iget-object v3, p0, Lcom/dpmods/anime$100000017;->val$input:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v1, "Wrong Key!"

    .line 667
    :cond_27
    :goto_27
    nop

    .line 669
    if-eqz v1, :cond_3c

    .line 670
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/dpmods/anime$100000017$100000015;

    invoke-direct {v2, p0, v1}, Lcom/dpmods/anime$100000017$100000015;-><init>(Lcom/dpmods/anime$100000017;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 673
    return-void

    .line 676
    :cond_3c
    iget-object v1, p0, Lcom/dpmods/anime$100000017;->this$0:Lcom/dpmods/anime;

    invoke-static {v1}, Lcom/dpmods/anime;->access$1000053(Lcom/dpmods/anime;)J

    move-result-wide v1

    .line 677
    iget-object v3, p0, Lcom/dpmods/anime$100000017;->this$0:Lcom/dpmods/anime;

    invoke-static {v3, v1, v2}, Lcom/dpmods/anime;->access$1000054(Lcom/dpmods/anime;J)J

    move-result-wide v1

    .line 679
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "device_lock"

    iget-object v4, p0, Lcom/dpmods/anime$100000017;->val$currentDeviceID:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "key_expiry_timestamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 684
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/dpmods/anime$100000017$100000016;

    invoke-direct {v1, p0}, Lcom/dpmods/anime$100000017$100000016;-><init>(Lcom/dpmods/anime$100000017;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
