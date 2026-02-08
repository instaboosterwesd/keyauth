.class Lcom/dpmods/anime$100000002;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method constructor <init>(Lcom/dpmods/anime;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000002;->this$0:Lcom/dpmods/anime;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000002;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000002;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 257
    iget-object p1, p0, Lcom/dpmods/anime$100000002;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000037(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_13

    :try_start_8
    iget-object p1, p0, Lcom/dpmods/anime$100000002;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000037(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-exception p1

    .line 258
    :cond_13
    :goto_13
    iget-object p1, p0, Lcom/dpmods/anime$100000002;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000038(Lcom/dpmods/anime;)Lcom/dpmods/anime$TiltManager;

    move-result-object p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/dpmods/anime$100000002;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000038(Lcom/dpmods/anime;)Lcom/dpmods/anime$TiltManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dpmods/anime$TiltManager;->stop()V

    :cond_24
    return-void
.end method
