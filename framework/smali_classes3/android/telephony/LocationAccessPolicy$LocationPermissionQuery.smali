.class public Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
.super Ljava/lang/Object;
.source "LocationAccessPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/LocationAccessPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationPermissionQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    }
.end annotation


# instance fields
.field public final callingFeatureId:Ljava/lang/String;

.field public final callingPackage:Ljava/lang/String;

.field public final callingPid:I

.field public final callingUid:I

.field public final logAsInfo:Z

.field public final method:Ljava/lang/String;

.field public final minSdkVersionForCoarse:I

.field public final minSdkVersionForFine:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;)V
    .registers 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "minSdkVersionForCoarse"    # I
    .param p6, "minSdkVersionForFine"    # I
    .param p7, "logAsInfo"    # Z
    .param p8, "method"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPackage:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingFeatureId:Ljava/lang/String;

    .line 75
    iput p3, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingUid:I

    .line 76
    iput p4, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->callingPid:I

    .line 77
    iput p5, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForCoarse:I

    .line 78
    iput p6, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->minSdkVersionForFine:I

    .line 79
    iput-boolean p7, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->logAsInfo:Z

    .line 80
    iput-object p8, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;->method:Ljava/lang/String;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;)V

    return-void
.end method
