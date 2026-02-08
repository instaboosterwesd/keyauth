.class Lcom/dpmods/anime$RealisticBurnView$Particle;
.super Ljava/lang/Object;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$RealisticBurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "Particle"
.end annotation


# instance fields
.field alpha:I

.field color:I

.field isAmbient:Z

.field size:F

.field private final this$0:Lcom/dpmods/anime$RealisticBurnView;

.field vx:F

.field vy:F

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/dpmods/anime$RealisticBurnView;FFZ)V
    .registers 11

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    .line 398
    iput p2, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->x:F

    iput p3, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->y:F

    .line 399
    iput-boolean p4, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->isAmbient:Z

    .line 402
    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000013(Lcom/dpmods/anime$RealisticBurnView;)Z

    move-result p2

    const/16 p3, 0xff

    const-string p4, "#FF4500"

    const-string v0, "#FFD700"

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p2, :cond_88

    .line 404
    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$0(Lcom/dpmods/anime$RealisticBurnView;)Lcom/dpmods/anime;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000015(Lcom/dpmods/anime$RealisticBurnView;)Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$0(Lcom/dpmods/anime$RealisticBurnView;)Lcom/dpmods/anime;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr p2, v3

    iput p2, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->size:F

    .line 405
    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000015(Lcom/dpmods/anime$RealisticBurnView;)Ljava/util/Random;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const v3, 0x3f19999a  # 0.6f

    mul-float p2, p2, v3

    const v3, -0x41666666  # -0.3f

    add-float/2addr p2, v3

    iput p2, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->vx:F

    .line 406
    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$0(Lcom/dpmods/anime$RealisticBurnView;)Lcom/dpmods/anime;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float p2, p2, v3

    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000015(Lcom/dpmods/anime$RealisticBurnView;)Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    add-float/2addr p2, v3

    iput p2, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->vy:F

    .line 409
    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000015(Lcom/dpmods/anime$RealisticBurnView;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 410
    if-nez p1, :cond_74

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->color:I

    goto :goto_85

    .line 411
    :cond_74
    if-ne p1, v2, :cond_7f

    const-string p1, "#FFA500"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->color:I

    goto :goto_85

    .line 412
    :cond_7f
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->color:I

    .line 414
    :goto_85
    iput p3, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->alpha:I

    goto :goto_f3

    .line 417
    :cond_88
    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$0(Lcom/dpmods/anime$RealisticBurnView;)Lcom/dpmods/anime;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000015(Lcom/dpmods/anime$RealisticBurnView;)Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$0(Lcom/dpmods/anime$RealisticBurnView;)Lcom/dpmods/anime;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr p2, v3

    iput p2, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->size:F

    .line 418
    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000015(Lcom/dpmods/anime$RealisticBurnView;)Ljava/util/Random;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    const/high16 v3, 0x40400000  # 3.0f

    mul-float p2, p2, v3

    const/high16 v3, -0x40400000  # -1.5f

    add-float/2addr p2, v3

    iput p2, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->vx:F

    .line 419
    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$0(Lcom/dpmods/anime$RealisticBurnView;)Lcom/dpmods/anime;

    move-result-object p2

    invoke-static {p2, v5}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000015(Lcom/dpmods/anime$RealisticBurnView;)Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$0(Lcom/dpmods/anime$RealisticBurnView;)Lcom/dpmods/anime;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    add-float/2addr p2, v3

    iput p2, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->vy:F

    .line 420
    invoke-static {p1}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000015(Lcom/dpmods/anime$RealisticBurnView;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 421
    if-nez p1, :cond_e7

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_ef

    :cond_e7
    if-ne p1, v2, :cond_ee

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_ef

    :cond_ee
    const/4 p1, -0x1

    :goto_ef
    iput p1, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->color:I

    .line 422
    iput p3, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->alpha:I

    :goto_f3
    return-void
.end method

.method static access$0(Lcom/dpmods/anime$RealisticBurnView$Particle;)Lcom/dpmods/anime$RealisticBurnView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    return-object p0
.end method


# virtual methods
.method update()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 427
    iget v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->x:F

    iget v1, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->vx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->x:F

    iget v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->y:F

    iget v1, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->vy:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->y:F

    .line 429
    iget-object v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->this$0:Lcom/dpmods/anime$RealisticBurnView;

    invoke-static {v0}, Lcom/dpmods/anime$RealisticBurnView;->access$L1000013(Lcom/dpmods/anime$RealisticBurnView;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 430
    iget v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->alpha:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->alpha:I

    .line 431
    iget v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->vx:F

    const v1, 0x3f7ae148  # 0.98f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->vx:F

    goto :goto_35

    .line 433
    :cond_26
    iget v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->alpha:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->alpha:I

    .line 434
    iget v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->vx:F

    const v1, 0x3f75c28f  # 0.96f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->vx:F

    .line 437
    :goto_35
    iget v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->alpha:I

    if-gez v0, :cond_3c

    const/4 v0, 0x0

    iput v0, p0, Lcom/dpmods/anime$RealisticBurnView$Particle;->alpha:I

    :cond_3c
    return-void
.end method
