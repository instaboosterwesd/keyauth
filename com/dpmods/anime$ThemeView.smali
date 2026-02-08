.class public Lcom/dpmods/anime$ThemeView;
.super Landroid/view/View;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x29
    name = "ThemeView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$ThemeView$Particle;
    }
.end annotation


# instance fields
.field private fontSize:I

.field private height:I

.field private matrixColumns:[I

.field private paint:Landroid/graphics/Paint;

.field private particles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dpmods/anime$ThemeView$Particle;",
            ">;"
        }
    .end annotation
.end field

.field private random:Ljava/util/Random;

.field private themeType:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 112
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x1e

    iput p1, p0, Lcom/dpmods/anime$ThemeView;->fontSize:I

    .line 113
    iput-object p2, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    .line 114
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    .line 115
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$ThemeView;->particles:Ljava/util/List;

    return-void
.end method

.method private drawBloodBubbles(Landroid/graphics/Canvas;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    const-string v1, "#880000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 211
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    .line 207
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$ThemeView$Particle;

    .line 208
    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 209
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    .line 210
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v4, v1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    iget-object v5, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 211
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_13

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/dpmods/anime$ThemeView;->resetParticle(Lcom/dpmods/anime$ThemeView$Particle;Z)V

    goto :goto_13
.end method

.method private drawCherryBlossoms(Landroid/graphics/Canvas;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    const-string v1, "#FFB7C5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    .line 195
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$ThemeView$Particle;

    .line 196
    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 197
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    .line 198
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    float-to-double v2, v2

    iget v4, v1, Lcom/dpmods/anime$ThemeView$Particle;->angle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    .line 199
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->angle:F

    const/4 v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->angle:F

    .line 200
    iget v4, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v5, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    add-float v6, v2, v3

    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    const/high16 v7, 0x3fc00000  # 1.5f

    div-float/2addr v3, v7

    add-float v7, v2, v3

    iget-object v8, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 201
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, p0, Lcom/dpmods/anime$ThemeView;->height:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/dpmods/anime$ThemeView;->resetParticle(Lcom/dpmods/anime$ThemeView$Particle;Z)V

    goto :goto_13
.end method

.method private drawFireflies(Landroid/graphics/Canvas;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    const-string v1, "#CCFF00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 263
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    .line 257
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$ThemeView$Particle;

    .line 258
    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 259
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    float-to-double v2, v2

    iget v4, v1, Lcom/dpmods/anime$ThemeView$Particle;->angle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    .line 260
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    .line 261
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->angle:F

    iget-object v3, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->angle:F

    .line 262
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v4, v1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    const/16 v3, -0x14

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_78

    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_78

    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v3, p0, Lcom/dpmods/anime$ThemeView;->width:I

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    :cond_78
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/dpmods/anime$ThemeView;->resetParticle(Lcom/dpmods/anime$ThemeView$Particle;Z)V

    goto :goto_13
.end method

.method private drawMatrix(Landroid/graphics/Canvas;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->matrixColumns:[I

    if-nez v0, :cond_d

    return-void

    .line 270
    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_f
    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->matrixColumns:[I

    array-length v2, v2

    if-lt v1, v2, :cond_1d

    .line 279
    const/16 p1, 0x1e

    int-to-long v0, p1

    :try_start_17
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception p1

    :goto_1c
    return-void

    .line 271
    :cond_1d
    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 272
    iget v3, p0, Lcom/dpmods/anime$ThemeView;->fontSize:I

    mul-int v4, v1, v3

    .line 273
    iget-object v5, p0, Lcom/dpmods/anime$ThemeView;->matrixColumns:[I

    aget v5, v5, v1

    mul-int v5, v5, v3

    .line 274
    iget-object v3, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 275
    int-to-float v3, v4

    int-to-float v4, v5

    iget-object v6, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 276
    iget v2, p0, Lcom/dpmods/anime$ThemeView;->height:I

    if-le v5, v2, :cond_5c

    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fef333333333333L  # 0.975

    cmpl-double v6, v2, v4

    if-lez v6, :cond_5c

    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->matrixColumns:[I

    aput v0, v2, v1

    .line 277
    :cond_5c
    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->matrixColumns:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method private drawRain(Landroid/graphics/Canvas;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    const-string v1, "#80A6D9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 230
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 234
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_21

    return-void

    .line 230
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$ThemeView$Particle;

    .line 231
    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 232
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    .line 233
    iget v4, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v5, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v6, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    add-float v7, v2, v3

    iget-object v8, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 234
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, p0, Lcom/dpmods/anime$ThemeView;->height:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/dpmods/anime$ThemeView;->resetParticle(Lcom/dpmods/anime$ThemeView$Particle;Z)V

    goto :goto_1a
.end method

.method private drawSnow(Landroid/graphics/Canvas;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 223
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    .line 217
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$ThemeView$Particle;

    .line 218
    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 219
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    add-float/2addr v2, v3

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    .line 220
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    float-to-double v2, v2

    iget v4, v1, Lcom/dpmods/anime$ThemeView$Particle;->angle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    .line 221
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->angle:F

    const/4 v3, 0x1

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->angle:F

    .line 222
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v3, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v4, v1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 223
    iget v2, v1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, p0, Lcom/dpmods/anime$ThemeView;->height:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/dpmods/anime$ThemeView;->resetParticle(Lcom/dpmods/anime$ThemeView$Particle;Z)V

    goto :goto_e
.end method

.method private drawStars(Landroid/graphics/Canvas;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    iget-object v1, v0, Lcom/dpmods/anime$ThemeView;->particles:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 251
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    .line 240
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dpmods/anime$ThemeView$Particle;

    .line 241
    iget-object v3, v0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_32

    iget v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->type:I

    if-nez v3, :cond_2f

    const/4 v3, 0x1

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    iput v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->type:I

    .line 242
    :cond_32
    iget v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->type:I

    if-ne v3, v5, :cond_39

    const/16 v3, 0xff

    goto :goto_3b

    :cond_39
    const/16 v3, 0x64

    .line 243
    :goto_3b
    iget-object v6, v0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 244
    iget v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v6, v2, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    add-float/2addr v3, v6

    iput v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    .line 245
    iget v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v6, v2, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v7, v2, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, v0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    invoke-virtual {v15, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 246
    iget v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    const/4 v6, 0x5

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_91

    .line 247
    iget-object v3, v0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 248
    iget v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v5, v2, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    sub-float v10, v3, v5

    iget v11, v2, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v5, v2, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    add-float v12, v3, v5

    iget v13, v2, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget-object v14, v0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 249
    iget v10, v2, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v5, v2, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    sub-float v11, v3, v5

    iget v12, v2, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    iget v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v5, v2, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    add-float v13, v3, v5

    iget-object v14, v0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 251
    :cond_91
    iget v3, v2, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    iget v5, v0, Lcom/dpmods/anime$ThemeView;->height:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_10

    invoke-direct {v0, v2, v4}, Lcom/dpmods/anime$ThemeView;->resetParticle(Lcom/dpmods/anime$ThemeView$Particle;Z)V

    goto/16 :goto_10
.end method

.method private initParticles()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->particles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v1, "matrix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 130
    iget v0, p0, Lcom/dpmods/anime$ThemeView;->width:I

    iget v2, p0, Lcom/dpmods/anime$ThemeView;->fontSize:I

    div-int/2addr v0, v2

    .line 131
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/dpmods/anime$ThemeView;->matrixColumns:[I

    .line 132
    nop

    :goto_1a
    if-lt v1, v0, :cond_2c

    .line 133
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dpmods/anime$ThemeView;->fontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_68

    .line 132
    :cond_2c
    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->matrixColumns:[I

    iget-object v3, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    iget v4, p0, Lcom/dpmods/anime$ThemeView;->height:I

    iget v5, p0, Lcom/dpmods/anime$ThemeView;->fontSize:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 136
    :cond_3e
    nop

    .line 137
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v2, "blood"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v2, "fireflies"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_57

    :cond_54
    const/16 v0, 0x32

    goto :goto_59

    :cond_57
    :goto_57
    const/16 v0, 0x19

    .line 138
    :goto_59
    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v3, "rain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    const/16 v0, 0x50

    .line 140
    :cond_65
    nop

    :goto_66
    if-lt v1, v0, :cond_69

    :goto_68
    return-void

    .line 141
    :cond_69
    new-instance v2, Lcom/dpmods/anime$ThemeView$Particle;

    invoke-direct {v2, p0}, Lcom/dpmods/anime$ThemeView$Particle;-><init>(Lcom/dpmods/anime$ThemeView;)V

    .line 142
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/dpmods/anime$ThemeView;->resetParticle(Lcom/dpmods/anime$ThemeView$Particle;Z)V

    .line 143
    iget-object v3, p0, Lcom/dpmods/anime$ThemeView;->particles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_66
.end method

.method private resetParticle(Lcom/dpmods/anime$ThemeView$Particle;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dpmods/anime$ThemeView$Particle;",
            "Z)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    iget v1, p0, Lcom/dpmods/anime$ThemeView;->width:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/dpmods/anime$ThemeView$Particle;->x:F

    .line 150
    if-eqz p2, :cond_16

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    iget v1, p0, Lcom/dpmods/anime$ThemeView;->height:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_18

    :cond_16
    const/16 v0, -0x14

    :goto_18
    int-to-float v0, v0

    iput v0, p1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    .line 151
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    iput v0, p1, Lcom/dpmods/anime$ThemeView$Particle;->alpha:I

    .line 152
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/16 v1, 0x168

    int-to-float v1, v1

    mul-float v0, v0, v1

    iput v0, p1, Lcom/dpmods/anime$ThemeView$Particle;->angle:F

    .line 154
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v1, "cherry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xf

    const/16 v2, 0xa

    const/4 v3, 0x2

    if-eqz v0, :cond_60

    .line 155
    int-to-float p2, v3

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/4 v3, 0x3

    int-to-float v3, v3

    mul-float v0, v0, v3

    add-float/2addr p2, v0

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    .line 156
    int-to-float p2, v2

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    goto/16 :goto_14b

    .line 157
    :cond_60
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v4, "blood"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x14

    if-eqz v0, :cond_9c

    .line 158
    if-eqz p2, :cond_77

    iget-object p2, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    iget v0, p0, Lcom/dpmods/anime$ThemeView;->height:I

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    goto :goto_7a

    :cond_77
    iget p2, p0, Lcom/dpmods/anime$ThemeView;->height:I

    add-int/2addr p2, v4

    :goto_7a
    int-to-float p2, p2

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    .line 159
    const/4 p2, 0x1

    int-to-float p2, p2

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    int-to-float v1, v3

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    .line 160
    int-to-float p2, v4

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/16 v1, 0x28

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    goto/16 :goto_14b

    .line 161
    :cond_9c
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v5, "snow"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x4

    if-eqz v0, :cond_c6

    .line 162
    int-to-float p2, v3

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    int-to-float v1, v5

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    .line 163
    const/4 p2, 0x5

    int-to-float p2, p2

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/16 v1, 0x8

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    goto/16 :goto_14b

    .line 164
    :cond_c6
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v6, "rain"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 165
    int-to-float p2, v1

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    int-to-float v1, v2

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    .line 166
    int-to-float p2, v4

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr p2, v0

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    goto :goto_14b

    .line 167
    :cond_ea
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v1, "stars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    const/high16 v2, 0x3f000000  # 0.5f

    if-eqz v0, :cond_11b

    .line 168
    iget-object p2, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    mul-float p2, p2, v2

    const v0, 0x3e4ccccd  # 0.2f

    add-float/2addr p2, v0

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    .line 169
    int-to-float p2, v3

    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    .line 170
    iget-object p2, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextBoolean()Z

    move-result p2

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->type:I

    goto :goto_14b

    .line 171
    :cond_11b
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v3, "fireflies"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 172
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    add-float/2addr v0, v2

    iput v0, p1, Lcom/dpmods/anime$ThemeView$Particle;->speed:F

    .line 173
    int-to-float v0, v5

    iget-object v2, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    int-to-float v1, v1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    iput v0, p1, Lcom/dpmods/anime$ThemeView$Particle;->size:F

    .line 174
    if-eqz p2, :cond_146

    iget-object p2, p0, Lcom/dpmods/anime$ThemeView;->random:Ljava/util/Random;

    iget v0, p0, Lcom/dpmods/anime$ThemeView;->height:I

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    goto :goto_148

    :cond_146
    iget p2, p0, Lcom/dpmods/anime$ThemeView;->height:I

    :goto_148
    int-to-float p2, p2

    iput p2, p1, Lcom/dpmods/anime$ThemeView$Particle;->y:F

    :cond_14b
    :goto_14b
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 180
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 182
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v1, "cherry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/dpmods/anime$ThemeView;->drawCherryBlossoms(Landroid/graphics/Canvas;)V

    goto :goto_64

    .line 183
    :cond_11
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v1, "blood"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/dpmods/anime$ThemeView;->drawBloodBubbles(Landroid/graphics/Canvas;)V

    goto :goto_64

    .line 184
    :cond_1f
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v1, "matrix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1}, Lcom/dpmods/anime$ThemeView;->drawMatrix(Landroid/graphics/Canvas;)V

    goto :goto_64

    .line 185
    :cond_2d
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v1, "snow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-direct {p0, p1}, Lcom/dpmods/anime$ThemeView;->drawSnow(Landroid/graphics/Canvas;)V

    goto :goto_64

    .line 186
    :cond_3b
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v1, "rain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-direct {p0, p1}, Lcom/dpmods/anime$ThemeView;->drawRain(Landroid/graphics/Canvas;)V

    goto :goto_64

    .line 187
    :cond_49
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v1, "stars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-direct {p0, p1}, Lcom/dpmods/anime$ThemeView;->drawStars(Landroid/graphics/Canvas;)V

    goto :goto_64

    .line 188
    :cond_57
    iget-object v0, p0, Lcom/dpmods/anime$ThemeView;->themeType:Ljava/lang/String;

    const-string v1, "fireflies"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-direct {p0, p1}, Lcom/dpmods/anime$ThemeView;->drawFireflies(Landroid/graphics/Canvas;)V

    .line 190
    :cond_64
    :goto_64
    invoke-virtual {p0}, Lcom/dpmods/anime$ThemeView;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 122
    iput p1, p0, Lcom/dpmods/anime$ThemeView;->width:I

    .line 123
    iput p2, p0, Lcom/dpmods/anime$ThemeView;->height:I

    .line 124
    invoke-direct {p0}, Lcom/dpmods/anime$ThemeView;->initParticles()V

    return-void
.end method
