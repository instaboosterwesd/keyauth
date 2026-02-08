.class Lcom/dpmods/anime$100000005;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dpmods/anime$100000005$100000004;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/dpmods/anime;

.field private final synthetic val$infoText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/dpmods/anime;Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$100000005;->this$0:Lcom/dpmods/anime;

    iput-object p2, p0, Lcom/dpmods/anime$100000005;->val$infoText:Landroid/widget/TextView;

    return-void
.end method

.method static access$0(Lcom/dpmods/anime$100000005;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$100000005;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/dpmods/anime$100000005;->val$infoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/dpmods/anime$100000005;->this$0:Lcom/dpmods/anime;

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/dpmods/anime;->access$1000075(Lcom/dpmods/anime;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0x1f4

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/dpmods/anime$100000005$100000004;

    iget-object v2, p0, Lcom/dpmods/anime$100000005;->val$infoText:Landroid/widget/TextView;

    invoke-direct {v1, p0, v2}, Lcom/dpmods/anime$100000005$100000004;-><init>(Lcom/dpmods/anime$100000005;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
