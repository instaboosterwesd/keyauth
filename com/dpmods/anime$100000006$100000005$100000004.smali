.class Lcom/dpmods/anime$100000006$100000005$100000004;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000006$100000005;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000004"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000006$100000005;

.field private final synthetic val$vv:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000006$100000005;Landroid/widget/VideoView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000006$100000005$100000004;->this$0:Lcom/dpmods/anime$100000006$100000005;

    iput-object p2, p0, Lcom/dpmods/anime$100000006$100000005$100000004;->val$vv:Landroid/widget/VideoView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000006$100000005$100000004;)Lcom/dpmods/anime$100000006$100000005;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000006$100000005$100000004;->this$0:Lcom/dpmods/anime$100000006$100000005;

    return-object p0
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlayer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 410
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 411
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 412
    iget-object p1, p0, Lcom/dpmods/anime$100000006$100000005$100000004;->val$vv:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method
