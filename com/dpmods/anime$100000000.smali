.class Lcom/dpmods/anime$100000000;
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
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime;

.field private final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/dpmods/anime;Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000000;->this$0:Lcom/dpmods/anime;

    iput-object p2, p0, Lcom/dpmods/anime$100000000;->val$h:Landroid/os/Handler;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000000;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000000;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/dpmods/anime$100000000;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 180
    nop

    .line 181
    :try_start_9
    iget-object v0, p0, Lcom/dpmods/anime$100000000;->this$0:Lcom/dpmods/anime;

    const-string v1, "Z/3y+9a/i+g28+3/oG+4wQ=="

    invoke-static {v0, v1}, Lcom/dpmods/anime;->access$1000047(Lcom/dpmods/anime;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    goto :goto_15

    :catch_12
    move-exception v0

    const-string v0, "Dialog By DPMods"

    .line 183
    :goto_15
    iget-object v1, p0, Lcom/dpmods/anime$100000000;->this$0:Lcom/dpmods/anime;

    invoke-static {v1}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Source Modified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object v0, p0, Lcom/dpmods/anime$100000000;->val$h:Landroid/os/Handler;

    const/16 v1, 0xdac

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3e
    return-void
.end method
