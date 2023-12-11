.class public final synthetic Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field public final synthetic f$0:Landroid/graphics/ColorSpace$Rgb;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/ColorSpace$Rgb;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/ColorSpace$Rgb;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .registers 4

    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->$r8$lambda$hfv2Db2fB-zhZeKbdprmkJrOVsY(Landroid/graphics/ColorSpace$Rgb;D)D

    move-result-wide p1

    return-wide p1
.end method
