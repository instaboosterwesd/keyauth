.class Lcom/dpmods/anime$GradientRingView;
.super Landroid/view/View;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "GradientRingView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/content/Context;)V
    .registers 4

    .line 784
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dpmods/anime$GradientRingView;->this$0:Lcom/dpmods/anime;

    .line 785
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/dpmods/anime$GradientRingView;->paint:Landroid/graphics/Paint;

    .line 786
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 787
    iget-object p2, p0, Lcom/dpmods/anime$GradientRingView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$1000075(Lcom/dpmods/anime;I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$GradientRingView;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$GradientRingView;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 791
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 792
    invoke-virtual {p0}, Lcom/dpmods/anime$GradientRingView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dpmods/anime$GradientRingView;->getHeight()I

    move-result v1

    .line 793
    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    int-to-float v4, v2

    int-to-float v11, v0

    int-to-float v12, v1

    iget-object v2, p0, Lcom/dpmods/anime$GradientRingView;->this$0:Lcom/dpmods/anime;

    invoke-static {v2}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)I

    move-result v2

    iget-object v3, p0, Lcom/dpmods/anime$GradientRingView;->this$0:Lcom/dpmods/anime;

    invoke-static {v3}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)I

    move-result v3

    const/4 v5, -0x1

    filled-new-array {v2, v5, v3}, [I

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, v8

    check-cast v2, [F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    move v3, v4

    move v5, v11

    move v6, v12

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 796
    iget-object v2, p0, Lcom/dpmods/anime$GradientRingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 797
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/dpmods/anime$GradientRingView;->this$0:Lcom/dpmods/anime;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/dpmods/anime;->access$1000075(Lcom/dpmods/anime;I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 798
    div-float/2addr v11, v1

    div-float/2addr v12, v1

    iget-object v1, p0, Lcom/dpmods/anime$GradientRingView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v12, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
