.class Lcom/dpmods/anime$TopGlowView;
.super Landroid/view/View;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "TopGlowView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/content/Context;F)V
    .registers 4

    .line 725
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dpmods/anime$TopGlowView;->this$0:Lcom/dpmods/anime;

    .line 726
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/dpmods/anime$TopGlowView;->paint:Landroid/graphics/Paint;

    .line 727
    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/dpmods/anime$TopGlowView;->setAlpha(F)V

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$TopGlowView;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$TopGlowView;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 730
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 731
    invoke-virtual {p0}, Lcom/dpmods/anime$TopGlowView;->getWidth()I

    move-result v0

    .line 732
    new-instance v8, Landroid/graphics/RadialGradient;

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float v2, v0, v1

    const/4 v1, 0x0

    int-to-float v9, v1

    const v3, 0x3f666666  # 0.9f

    mul-float v4, v0, v3

    const-string v3, "#CD00FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    filled-new-array {v3, v1}, [I

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v6

    check-cast v1, [F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v8

    move v3, v9

    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 733
    iget-object v1, p0, Lcom/dpmods/anime$TopGlowView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 734
    invoke-virtual {p0}, Lcom/dpmods/anime$TopGlowView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/dpmods/anime$TopGlowView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v9

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
