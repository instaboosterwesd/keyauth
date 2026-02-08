.class Lcom/dpmods/anime$TiltManager;
.super Ljava/lang/Object;
.source "anime.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dpmods/anime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "TiltManager"
.end annotation


# instance fields
.field private final MAX_TILT:F

.field private accelerometer:Landroid/hardware/Sensor;

.field private geomagnetic:[F

.field private gravity:[F

.field private magnetometer:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private targetView:Landroid/view/View;

.field private final this$0:Lcom/dpmods/anime;


# direct methods
.method public constructor <init>(Lcom/dpmods/anime;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dpmods/anime$TiltManager;->this$0:Lcom/dpmods/anime;

    const/high16 p1, 0x40000000  # 2.0f

    iput p1, p0, Lcom/dpmods/anime$TiltManager;->MAX_TILT:F

    .line 816
    iput-object p3, p0, Lcom/dpmods/anime$TiltManager;->targetView:Landroid/view/View;

    .line 817
    const-string p1, "sensor"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/dpmods/anime$TiltManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 818
    if-eqz p1, :cond_27

    .line 819
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/dpmods/anime$TiltManager;->accelerometer:Landroid/hardware/Sensor;

    .line 820
    iget-object p1, p0, Lcom/dpmods/anime$TiltManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/dpmods/anime$TiltManager;->magnetometer:Landroid/hardware/Sensor;

    :cond_27
    return-void
.end method

.method static access$0(Lcom/dpmods/anime$TiltManager;)Lcom/dpmods/anime;
    .registers 1

    iget-object p0, p0, Lcom/dpmods/anime$TiltManager;->this$0:Lcom/dpmods/anime;

    return-object p0
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

    .line 837
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v0, p0, Lcom/dpmods/anime$TiltManager;->gravity:[F

    .line 838
    :cond_d
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object p1, p0, Lcom/dpmods/anime$TiltManager;->geomagnetic:[F

    .line 839
    :cond_1a
    iget-object p1, p0, Lcom/dpmods/anime$TiltManager;->gravity:[F

    if-eqz p1, :cond_7a

    iget-object v0, p0, Lcom/dpmods/anime$TiltManager;->geomagnetic:[F

    if-eqz v0, :cond_7a

    .line 840
    const/16 v3, 0x9

    new-array v4, v3, [F

    .line 841
    new-array v3, v3, [F

    .line 842
    invoke-static {v4, v3, p1, v0}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 843
    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 844
    invoke-static {v4, p1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 845
    aget v0, p1, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 846
    aget p1, p1, v2

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float p1, v1

    .line 847
    neg-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v2, -0x40000000  # -2.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 848
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 849
    iget-object v1, p0, Lcom/dpmods/anime$TiltManager;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotationX()F

    move-result v1

    .line 850
    iget-object v2, p0, Lcom/dpmods/anime$TiltManager;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v2

    .line 851
    iget-object v3, p0, Lcom/dpmods/anime$TiltManager;->targetView:Landroid/view/View;

    sub-float/2addr v0, v1

    const v4, 0x3cf5c28f  # 0.03f

    mul-float v0, v0, v4

    add-float/2addr v1, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setRotationX(F)V

    .line 852
    iget-object v0, p0, Lcom/dpmods/anime$TiltManager;->targetView:Landroid/view/View;

    sub-float/2addr p1, v2

    mul-float p1, p1, v4

    add-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotationY(F)V

    :cond_7a
    return-void
.end method

.method public start()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/dpmods/anime$TiltManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_15

    .line 826
    iget-object v1, p0, Lcom/dpmods/anime$TiltManager;->accelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    if-eqz v1, :cond_c

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 827
    :cond_c
    iget-object v0, p0, Lcom/dpmods/anime$TiltManager;->magnetometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/dpmods/anime$TiltManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_15
    return-void
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/dpmods/anime$TiltManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_7
    return-void
.end method
