.class Lcom/dpmods/anime$CinematicParticleView$100000020;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime$CinematicParticleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000020"
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime$CinematicParticleView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime$CinematicParticleView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$CinematicParticleView$100000020;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$CinematicParticleView$100000020;)Lcom/dpmods/anime$CinematicParticleView;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$CinematicParticleView$100000020;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    return-object p0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/ValueAnimator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 893
    iget-object p1, p0, Lcom/dpmods/anime$CinematicParticleView$100000020;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-static {p1}, Lcom/dpmods/anime$CinematicParticleView;->access$1000092(Lcom/dpmods/anime$CinematicParticleView;)V

    iget-object p1, p0, Lcom/dpmods/anime$CinematicParticleView$100000020;->this$0:Lcom/dpmods/anime$CinematicParticleView;

    invoke-virtual {p1}, Lcom/dpmods/anime$CinematicParticleView;->invalidate()V

    return-void
.end method
