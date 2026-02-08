.class Lcom/dpmods/anime$100000010$100000009$100000008$100000007;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$100000010$100000009$100000008;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000007"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$100000010$100000009$100000008;

.field private final synthetic val$finalH:I

.field private final synthetic val$finalW:I

.field private final synthetic val$tv:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$100000010$100000009$100000008;IILandroid/view/TextureView;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000010$100000009$100000008$100000007;->this$0:Lcom/dpmods/anime$100000010$100000009$100000008;

    iput p2, p0, Lcom/dpmods/anime$100000010$100000009$100000008$100000007;->val$finalW:I

    iput p3, p0, Lcom/dpmods/anime$100000010$100000009$100000008$100000007;->val$finalH:I

    iput-object p4, p0, Lcom/dpmods/anime$100000010$100000009$100000008$100000007;->val$tv:Landroid/view/TextureView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000010$100000009$100000008$100000007;)Lcom/dpmods/anime$100000010$100000009$100000008;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000010$100000009$100000008$100000007;->this$0:Lcom/dpmods/anime$100000010$100000009$100000008;

    return-object p0
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlayer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 421
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 422
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 423
    iget v0, p0, Lcom/dpmods/anime$100000010$100000009$100000008$100000007;->val$finalW:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/dpmods/anime$100000010$100000009$100000008$100000007;->val$finalH:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    const v1, 0x3fd9999a  # 1.7f

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 424
    iget-object v0, p0, Lcom/dpmods/anime$100000010$100000009$100000008$100000007;->val$tv:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
