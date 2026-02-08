.class Lcom/dpmods/anime$MagicParticleView;
.super Landroid/view/View;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "MagicParticleView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$MagicParticleView$Particle;,
        Lcom/dpmods/anime$MagicParticleView$100000018;
    }
.end annotation


# instance fields
.field private isAnimating:Z

.field private paint:Landroid/graphics/Paint;

.field private particles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dpmods/anime$MagicParticleView$Particle;",
            ">;"
        }
    .end annotation
.end field

.field private random:Ljava/util/Random;

.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/content/Context;)V
    .registers 3

    .line 621
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dpmods/anime$MagicParticleView;->this$0:Lcom/dpmods/anime;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$MagicParticleView;->particles:Ljava/util/List;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/dpmods/anime$MagicParticleView;->paint:Landroid/graphics/Paint;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$MagicParticleView;->random:Ljava/util/Random;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dpmods/anime$MagicParticleView;->isAnimating:Z

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$MagicParticleView;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$MagicParticleView;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method

.method static synthetic access$L1000086(Lcom/dpmods/anime$MagicParticleView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$MagicParticleView;->particles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$L1000088(Lcom/dpmods/anime$MagicParticleView;)Ljava/util/Random;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$MagicParticleView;->random:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic access$L1000089(Lcom/dpmods/anime$MagicParticleView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/dpmods/anime$MagicParticleView;->isAnimating:Z

    return p0
.end method

.method static synthetic access$S1000086(Lcom/dpmods/anime$MagicParticleView;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime$MagicParticleView;->particles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$S1000088(Lcom/dpmods/anime$MagicParticleView;Ljava/util/Random;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime$MagicParticleView;->random:Ljava/util/Random;

    return-void
.end method

.method static synthetic access$S1000089(Lcom/dpmods/anime$MagicParticleView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/dpmods/anime$MagicParticleView;->isAnimating:Z

    return-void
.end method

.method private startAnimation()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 623
    new-instance v0, Lcom/dpmods/anime$MagicParticleView$100000018;

    invoke-direct {v0, p0}, Lcom/dpmods/anime$MagicParticleView$100000018;-><init>(Lcom/dpmods/anime$MagicParticleView;)V

    invoke-virtual {p0, v0}, Lcom/dpmods/anime$MagicParticleView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public explode(FF)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .line 622
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x14

    if-lt v0, v1, :cond_10

    iget-boolean p1, p0, Lcom/dpmods/anime$MagicParticleView;->isAnimating:Z

    if-nez p1, :cond_f

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dpmods/anime$MagicParticleView;->isAnimating:Z

    invoke-direct {p0}, Lcom/dpmods/anime$MagicParticleView;->startAnimation()V

    :cond_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/dpmods/anime$MagicParticleView;->particles:Ljava/util/List;

    new-instance v2, Lcom/dpmods/anime$MagicParticleView$Particle;

    invoke-direct {v2, p0, p1, p2}, Lcom/dpmods/anime$MagicParticleView$Particle;-><init>(Lcom/dpmods/anime$MagicParticleView;FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 624
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/dpmods/anime$MagicParticleView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$MagicParticleView$Particle;

    iget-object v2, p0, Lcom/dpmods/anime$MagicParticleView;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$MagicParticleView$Particle;->color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/dpmods/anime$MagicParticleView;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$MagicParticleView$Particle;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, v1, Lcom/dpmods/anime$MagicParticleView$Particle;->x:F

    iget v3, v1, Lcom/dpmods/anime$MagicParticleView$Particle;->y:F

    iget v1, v1, Lcom/dpmods/anime$MagicParticleView$Particle;->size:F

    iget-object v4, p0, Lcom/dpmods/anime$MagicParticleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_b
.end method
