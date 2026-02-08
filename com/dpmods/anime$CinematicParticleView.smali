.class Lcom/dpmods/anime$CinematicParticleView;
.super Landroid/view/View;
.source "anime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "CinematicParticleView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$CinematicParticleView$100000021;,
        Lcom/dpmods/anime$CinematicParticleView$Particle;
    }
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private particles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dpmods/anime$CinematicParticleView$Particle;",
            ">;"
        }
    .end annotation
.end field

.field private random:Ljava/util/Random;

.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/content/Context;)V
    .registers 3

    .line 863
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dpmods/anime$CinematicParticleView;->this$0:Lcom/dpmods/anime;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$CinematicParticleView;->particles:Ljava/util/List;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$CinematicParticleView;->random:Ljava/util/Random;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/dpmods/anime$CinematicParticleView;->setMinimumHeight(I)V

    invoke-direct {p0}, Lcom/dpmods/anime$CinematicParticleView;->init()V

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$CinematicParticleView;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$CinematicParticleView;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method

.method static synthetic access$1000089(Lcom/dpmods/anime$CinematicParticleView;)V
    .registers 1

    invoke-direct {p0}, Lcom/dpmods/anime$CinematicParticleView;->updateParticles()V

    return-void
.end method

.method static synthetic access$L1000086(Lcom/dpmods/anime$CinematicParticleView;)Ljava/util/Random;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$CinematicParticleView;->random:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic access$S1000086(Lcom/dpmods/anime$CinematicParticleView;Ljava/util/Random;)V
    .registers 2

    iput-object p1, p0, Lcom/dpmods/anime$CinematicParticleView;->random:Ljava/util/Random;

    return-void
.end method

.method private init()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 865
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/dpmods/anime$CinematicParticleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 866
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dpmods/anime$CinematicParticleView;->paint:Landroid/graphics/Paint;

    .line 867
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 868
    iget-object v0, p0, Lcom/dpmods/anime$CinematicParticleView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/dpmods/anime$CinematicParticleView;->this$0:Lcom/dpmods/anime;

    invoke-static {v2}, Lcom/dpmods/anime;->access$L1000015(Lcom/dpmods/anime;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 869
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    int-to-float v3, v2

    aput v3, v0, v2

    int-to-float v2, v1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 870
    const/16 v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 871
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 872
    new-instance v1, Lcom/dpmods/anime$CinematicParticleView$100000021;

    invoke-direct {v1, p0}, Lcom/dpmods/anime$CinematicParticleView$100000021;-><init>(Lcom/dpmods/anime$CinematicParticleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 875
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateParticles()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/dpmods/anime$CinematicParticleView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$CinematicParticleView$Particle;

    invoke-virtual {p0}, Lcom/dpmods/anime$CinematicParticleView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dpmods/anime$CinematicParticleView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/dpmods/anime$CinematicParticleView$Particle;->update(II)V

    goto :goto_8
.end method


# virtual methods
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

    .line 882
    iget-object v0, p0, Lcom/dpmods/anime$CinematicParticleView;->particles:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dpmods/anime$CinematicParticleView$Particle;

    iget-object v2, p0, Lcom/dpmods/anime$CinematicParticleView;->paint:Landroid/graphics/Paint;

    iget v3, v1, Lcom/dpmods/anime$CinematicParticleView$Particle;->alpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, v1, Lcom/dpmods/anime$CinematicParticleView$Particle;->x:F

    iget v3, v1, Lcom/dpmods/anime$CinematicParticleView$Particle;->y:F

    iget v1, v1, Lcom/dpmods/anime$CinematicParticleView$Particle;->size:F

    iget-object v4, p0, Lcom/dpmods/anime$CinematicParticleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 877
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/dpmods/anime$CinematicParticleView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 879
    iget-object p3, p0, Lcom/dpmods/anime$CinematicParticleView;->particles:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1b

    const/4 p3, 0x0

    :goto_9
    const/16 p4, 0x1e

    if-lt p3, p4, :cond_e

    goto :goto_1b

    :cond_e
    iget-object p4, p0, Lcom/dpmods/anime$CinematicParticleView;->particles:Ljava/util/List;

    new-instance v0, Lcom/dpmods/anime$CinematicParticleView$Particle;

    invoke-direct {v0, p0, p1, p2}, Lcom/dpmods/anime$CinematicParticleView$Particle;-><init>(Lcom/dpmods/anime$CinematicParticleView;II)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_1b
    :goto_1b
    return-void
.end method
