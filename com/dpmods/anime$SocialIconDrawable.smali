.class Lcom/dpmods/anime$SocialIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "SocialIconDrawable"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private final this$0:Lcom/dpmods/anime;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;I)V
    .registers 4

    .line 637
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    iput p2, p0, Lcom/dpmods/anime$SocialIconDrawable;->type:I

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/dpmods/anime;->access$L1000040(Lcom/dpmods/anime;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x2

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p1, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$SocialIconDrawable;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/dpmods/anime$SocialIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/dpmods/anime$SocialIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->type:I

    const/4 v3, 0x1

    const v4, 0x3f333333  # 0.7f

    const v5, 0x3f19999a  # 0.6f

    const v6, 0x3f4ccccd  # 0.8f

    const/high16 v7, 0x3f000000  # 0.5f

    const v8, 0x3e4ccccd  # 0.2f

    if-ne v2, v3, :cond_5c

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    int-to-float v0, v0

    mul-float v3, v0, v8

    int-to-float v1, v1

    mul-float v9, v1, v7

    invoke-virtual {v2, v3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    mul-float v10, v0, v6

    mul-float v8, v8, v1

    invoke-virtual {v2, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    mul-float v4, v4, v0

    mul-float v6, v6, v1

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    mul-float v0, v0, v7

    mul-float v1, v1, v5

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_53
    iget-object v0, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_197

    :cond_5c
    const/4 v3, 0x4

    const/high16 v9, 0x3f400000  # 0.75f

    const/high16 v10, 0x3e800000  # 0.25f

    const/4 v11, 0x2

    if-ne v2, v11, :cond_b7

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v0, v0

    const v4, 0x3dcccccd  # 0.1f

    mul-float v4, v4, v0

    int-to-float v1, v1

    mul-float v10, v10, v1

    const v6, 0x3f666666  # 0.9f

    mul-float v6, v6, v0

    mul-float v9, v9, v1

    invoke-direct {v2, v4, v10, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    int-to-float v3, v3

    invoke-static {v4, v3}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    invoke-static {v6, v3}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    const v3, 0x3ee66666  # 0.45f

    mul-float v3, v3, v0

    const v4, 0x3ecccccd  # 0.4f

    mul-float v4, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    mul-float v0, v0, v5

    mul-float v7, v7, v1

    invoke-virtual {v2, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    mul-float v1, v1, v5

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_53

    :cond_b7
    const/4 v5, 0x3

    if-ne v2, v5, :cond_110

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v0, v0

    mul-float v3, v0, v8

    int-to-float v1, v1

    mul-float v8, v8, v1

    mul-float v5, v0, v6

    mul-float v6, v6, v1

    invoke-direct {v2, v3, v8, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    const/4 v5, 0x5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    invoke-static {v6, v5}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    mul-float v2, v0, v7

    mul-float v7, v7, v1

    const v3, 0x3e19999a  # 0.15f

    mul-float v3, v3, v0

    iget-object v5, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float v0, v0, v4

    const v2, 0x3e99999a  # 0.3f

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    int-to-float v3, v11

    invoke-static {v2, v3}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_197

    :cond_110
    if-ne v2, v3, :cond_197

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v0, v0

    const v3, 0x3eb33333  # 0.35f

    mul-float v4, v0, v3

    int-to-float v1, v1

    mul-float v8, v8, v1

    mul-float v9, v9, v0

    const v5, 0x3f266666  # 0.65f

    mul-float v7, v1, v5

    invoke-direct {v2, v4, v8, v9, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    int-to-float v7, v11

    invoke-static {v4, v7}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v8, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    invoke-static {v8, v7}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    invoke-static {v4}, Lcom/dpmods/anime;->access$L1000033(Lcom/dpmods/anime;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/RectF;

    mul-float v10, v10, v0

    mul-float v3, v3, v1

    mul-float v0, v0, v5

    mul-float v1, v1, v6

    invoke-direct {v2, v10, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    invoke-static {v0, v7}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    invoke-static {v1, v7}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    invoke-static {v1}, Lcom/dpmods/anime;->access$L1000040(Lcom/dpmods/anime;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    invoke-static {v0, v7}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dpmods/anime$SocialIconDrawable;->this$0:Lcom/dpmods/anime;

    invoke-static {v1, v7}, Lcom/dpmods/anime;->access$1000110(Lcom/dpmods/anime;F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/dpmods/anime$SocialIconDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_197
    :goto_197
    return-void
.end method

.method public getOpacity()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 637
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
