.class Lcom/dpmods/anime$100000021;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000021"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$100000021$100000020;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime;

.field private final synthetic val$assetName:Ljava/lang/String;

.field private final synthetic val$tv:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime;Ljava/lang/String;Landroid/view/TextureView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    iput-object p2, p0, Lcom/dpmods/anime$100000021;->val$assetName:Ljava/lang/String;

    iput-object p3, p0, Lcom/dpmods/anime$100000021;->val$tv:Landroid/view/TextureView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000021;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/SurfaceTexture;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 813
    nop

    .line 815
    :try_start_1
    iget-object v0, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/dpmods/anime;->access$S1000041(Lcom/dpmods/anime;Landroid/media/MediaPlayer;)V

    .line 816
    iget-object v0, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000000(Lcom/dpmods/anime;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dpmods/anime$100000021;->val$assetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    invoke-static {v1}, Lcom/dpmods/anime;->access$L1000041(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 818
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 819
    iget-object v0, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    invoke-static {v0}, Lcom/dpmods/anime;->access$L1000041(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 820
    iget-object p1, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000041(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 821
    iget-object p1, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000041(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 822
    iget-object p1, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000041(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    new-instance v0, Lcom/dpmods/anime$100000021$100000020;

    iget-object v1, p0, Lcom/dpmods/anime$100000021;->val$tv:Landroid/view/TextureView;

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/dpmods/anime$100000021$100000020;-><init>(Lcom/dpmods/anime$100000021;IILandroid/view/TextureView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 830
    iget-object p1, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000041(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception p1

    :goto_70
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 834
    iget-object p1, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000041(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000041(Lcom/dpmods/anime;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object p1, p0, Lcom/dpmods/anime$100000021;->this$0:Lcom/dpmods/anime;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$S1000041(Lcom/dpmods/anime;Landroid/media/MediaPlayer;)V

    :cond_1a
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
