.class Lcom/dpmods/anime$ParallaxLayer;
.super Landroid/widget/FrameLayout;
.source "anime.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "ParallaxLayer"
.end annotation


# instance fields
.field private final MAX_OFFSET:F

.field private accelerometer:Landroid/hardware/Sensor;

.field private geomagnetic:[F

.field private gravity:[F

.field private magnetometer:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/content/Context;)V
    .registers 4

    .line 346
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dpmods/anime$ParallaxLayer;->this$0:Lcom/dpmods/anime;

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/dpmods/anime;->access$1000048(Lcom/dpmods/anime;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/dpmods/anime$ParallaxLayer;->MAX_OFFSET:F

    .line 348
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/dpmods/anime$ParallaxLayer;->setMinimumHeight(I)V

    .line 350
    const-string p1, "sensor"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/dpmods/anime$ParallaxLayer;->sensorManager:Landroid/hardware/SensorManager;

    .line 351
    if-eqz p1, :cond_2e

    .line 352
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/dpmods/anime$ParallaxLayer;->accelerometer:Landroid/hardware/Sensor;

    .line 353
    iget-object p1, p0, Lcom/dpmods/anime$ParallaxLayer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/dpmods/anime$ParallaxLayer;->magnetometer:Landroid/hardware/Sensor;

    :cond_2e
    return-void
.end method

.method static access$0(Lcom/dpmods/anime$ParallaxLayer;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$ParallaxLayer;->this$0:Lcom/dpmods/anime;

    return-object p0
.end method

.method private lerp(FFF)F
    .registers 4

    .line 413
    sub-float/2addr p2, p1

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    return p1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Sensor;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 359
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 360
    iget-object v0, p0, Lcom/dpmods/anime$ParallaxLayer;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_18

    .line 361
    iget-object v1, p0, Lcom/dpmods/anime$ParallaxLayer;->accelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    if-eqz v1, :cond_f

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 362
    :cond_f
    iget-object v0, p0, Lcom/dpmods/anime$ParallaxLayer;->magnetometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/dpmods/anime$ParallaxLayer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_18
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 368
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 369
    iget-object v0, p0, Lcom/dpmods/anime$ParallaxLayer;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_a

    .line 370
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_a
    return-void
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

    .line 379
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/dpmods/anime$ParallaxLayer;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/SensorEvent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 384
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v0, p0, Lcom/dpmods/anime$ParallaxLayer;->gravity:[F

    .line 385
    :cond_d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lcom/dpmods/anime$ParallaxLayer;->geomagnetic:[F

    .line 387
    :cond_1a
    iget-object p1, p0, Lcom/dpmods/anime$ParallaxLayer;->gravity:[F

    if-eqz p1, :cond_58

    iget-object v0, p0, Lcom/dpmods/anime$ParallaxLayer;->geomagnetic:[F

    if-eqz v0, :cond_58

    .line 388
    const/16 v3, 0x9

    new-array v4, v3, [F

    .line 389
    new-array v3, v3, [F

    .line 391
    invoke-static {v4, v3, p1, v0}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 392
    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 393
    invoke-static {v4, p1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 397
    aget v0, p1, v1

    .line 398
    aget p1, p1, v2

    .line 401
    neg-float p1, p1

    iget v1, p0, Lcom/dpmods/anime$ParallaxLayer;->MAX_OFFSET:F

    mul-float p1, p1, v1

    .line 402
    mul-float v0, v0, v1

    .line 405
    invoke-virtual {p0}, Lcom/dpmods/anime$ParallaxLayer;->getTranslationX()F

    move-result v1

    const v2, 0x3dcccccd  # 0.1f

    invoke-direct {p0, v1, p1, v2}, Lcom/dpmods/anime$ParallaxLayer;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dpmods/anime$ParallaxLayer;->setTranslationX(F)V

    .line 406
    invoke-virtual {p0}, Lcom/dpmods/anime$ParallaxLayer;->getTranslationY()F

    move-result p1

    invoke-direct {p0, p1, v0, v2}, Lcom/dpmods/anime$ParallaxLayer;->lerp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dpmods/anime$ParallaxLayer;->setTranslationY(F)V

    :cond_58
    return-void
.end method
