.class Lcom/dpmods/anime$BurningPaperView$Particle;
.super Ljava/lang/Object;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$BurningPaperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "Particle"
.end annotation


# instance fields
.field alpha:I

.field color:I

.field size:F

.field speedY:F

.field private final this$0:Lcom/dpmods/anime$BurningPaperView;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/dpmods/anime$BurningPaperView;FF)V
    .registers 7

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->this$0:Lcom/dpmods/anime$BurningPaperView;

    .line 321
    iput p2, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->x:F

    .line 322
    iput p3, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->y:F

    .line 324
    invoke-static {p1}, Lcom/dpmods/anime$BurningPaperView;->access$0(Lcom/dpmods/anime$BurningPaperView;)Lcom/dpmods/anime;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lcom/dpmods/anime$BurningPaperView;->access$L1000012(Lcom/dpmods/anime$BurningPaperView;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p1}, Lcom/dpmods/anime$BurningPaperView;->access$0(Lcom/dpmods/anime$BurningPaperView;)Lcom/dpmods/anime;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->speedY:F

    .line 325
    invoke-static {p1}, Lcom/dpmods/anime$BurningPaperView;->access$0(Lcom/dpmods/anime$BurningPaperView;)Lcom/dpmods/anime;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1}, Lcom/dpmods/anime$BurningPaperView;->access$L1000012(Lcom/dpmods/anime$BurningPaperView;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p1}, Lcom/dpmods/anime$BurningPaperView;->access$0(Lcom/dpmods/anime$BurningPaperView;)Lcom/dpmods/anime;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/dpmods/anime;->access$1000004(Lcom/dpmods/anime;I)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->size:F

    .line 326
    const/16 p2, 0xff

    iput p2, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->alpha:I

    .line 329
    invoke-static {p1}, Lcom/dpmods/anime$BurningPaperView;->access$L1000012(Lcom/dpmods/anime$BurningPaperView;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 330
    if-nez p1, :cond_5d

    const/16 p1, -0x100

    iput p1, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->color:I

    goto :goto_6c

    .line 331
    :cond_5d
    if-ne p1, p3, :cond_68

    const-string p1, "#FFA500"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->color:I

    goto :goto_6c

    .line 332
    :cond_68
    const/high16 p1, -0x10000

    iput p1, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->color:I

    :goto_6c
    return-void
.end method

.method static access$0(Lcom/dpmods/anime$BurningPaperView$Particle;)Lcom/dpmods/anime$BurningPaperView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->this$0:Lcom/dpmods/anime$BurningPaperView;

    return-object p0
.end method


# virtual methods
.method update()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 336
    iget v0, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->y:F

    iget v1, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->speedY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->y:F

    .line 337
    iget v0, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->x:F

    const/4 v1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->this$0:Lcom/dpmods/anime$BurningPaperView;

    invoke-static {v2}, Lcom/dpmods/anime$BurningPaperView;->access$L1000012(Lcom/dpmods/anime$BurningPaperView;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->x:F

    .line 338
    iget v0, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->alpha:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->alpha:I

    .line 339
    if-gez v0, :cond_28

    const/4 v0, 0x0

    iput v0, p0, Lcom/dpmods/anime$BurningPaperView$Particle;->alpha:I

    :cond_28
    return-void
.end method
