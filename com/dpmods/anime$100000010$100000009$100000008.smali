.class Lcom/dpmods/anime$100000010$100000009$100000008;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000010$100000009;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$100000010$100000009$100000008$100000007;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000010$100000009;

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$tv:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000010$100000009;Ljava/io/File;Landroid/view/TextureView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    iput-object p2, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->val$f:Ljava/io/File;

    iput-object p3, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->val$tv:Landroid/view/TextureView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000010$100000009$100000008;)Lcom/dpmods/anime$100000010$100000009;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    return-object p0
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/SurfaceTexture;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 411
    nop

    .line 412
    nop

    .line 414
    :try_start_2
    iget-object v0, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    invoke-static {v0}, Lcom/dpmods/anime$100000010$100000009;->access$0(Lcom/dpmods/anime$100000010$100000009;)Lcom/dpmods/anime$100000010;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime$100000010;->access$0(Lcom/dpmods/anime$100000010;)Lcom/dpmods/anime;

    move-result-object v0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/dpmods/anime;->access$S1000015(Lcom/dpmods/anime;Landroid/media/MediaPlayer;)V

    .line 415
    iget-object v0, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    invoke-static {v0}, Lcom/dpmods/anime$100000010$100000009;->access$0(Lcom/dpmods/anime$100000010$100000009;)Lcom/dpmods/anime$100000010;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime$100000010;->access$0(Lcom/dpmods/anime$100000010;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->val$f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    invoke-static {v0}, Lcom/dpmods/anime$100000010$100000009;->access$0(Lcom/dpmods/anime$100000010$100000009;)Lcom/dpmods/anime$100000010;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime$100000010;->access$0(Lcom/dpmods/anime$100000010;)Lcom/dpmods/anime;

    move-result-object v0

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 417
    iget-object p1, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    invoke-static {p1}, Lcom/dpmods/anime$100000010$100000009;->access$0(Lcom/dpmods/anime$100000010$100000009;)Lcom/dpmods/anime$100000010;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime$100000010;->access$0(Lcom/dpmods/anime$100000010;)Lcom/dpmods/anime;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 418
    iget-object p1, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    invoke-static {p1}, Lcom/dpmods/anime$100000010$100000009;->access$0(Lcom/dpmods/anime$100000010$100000009;)Lcom/dpmods/anime$100000010;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime$100000010;->access$0(Lcom/dpmods/anime$100000010;)Lcom/dpmods/anime;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 419
    iget-object p1, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    invoke-static {p1}, Lcom/dpmods/anime$100000010$100000009;->access$0(Lcom/dpmods/anime$100000010$100000009;)Lcom/dpmods/anime$100000010;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime$100000010;->access$0(Lcom/dpmods/anime$100000010;)Lcom/dpmods/anime;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    new-instance v0, Lcom/dpmods/anime$100000010$100000009$100000008$100000007;

    iget-object v1, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->val$tv:Landroid/view/TextureView;

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/dpmods/anime$100000010$100000009$100000008$100000007;-><init>(Lcom/dpmods/anime$100000010$100000009$100000008;IILandroid/view/TextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 427
    iget-object p1, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    invoke-static {p1}, Lcom/dpmods/anime$100000010$100000009;->access$0(Lcom/dpmods/anime$100000010$100000009;)Lcom/dpmods/anime$100000010;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime$100000010;->access$0(Lcom/dpmods/anime$100000010;)Lcom/dpmods/anime;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception p1

    .line 428
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_93
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 432
    iget-object p1, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    invoke-static {p1}, Lcom/dpmods/anime$100000010$100000009;->access$0(Lcom/dpmods/anime$100000010$100000009;)Lcom/dpmods/anime$100000010;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime$100000010;->access$0(Lcom/dpmods/anime$100000010;)Lcom/dpmods/anime;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    invoke-static {p1}, Lcom/dpmods/anime$100000010$100000009;->access$0(Lcom/dpmods/anime$100000010$100000009;)Lcom/dpmods/anime$100000010;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime$100000010;->access$0(Lcom/dpmods/anime$100000010;)Lcom/dpmods/anime;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object p1, p0, Lcom/dpmods/anime$100000010$100000009$100000008;->this$0:Lcom/dpmods/anime$100000010$100000009;

    invoke-static {p1}, Lcom/dpmods/anime$100000010$100000009;->access$0(Lcom/dpmods/anime$100000010$100000009;)Lcom/dpmods/anime$100000010;

    move-result-object p1

    invoke-static {p1}, Lcom/dpmods/anime$100000010;->access$0(Lcom/dpmods/anime$100000010;)Lcom/dpmods/anime;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$S1000015(Lcom/dpmods/anime;Landroid/media/MediaPlayer;)V

    .line 433
    :cond_32
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/SurfaceTexture;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/SurfaceTexture;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
