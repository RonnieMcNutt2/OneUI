.class public final synthetic Landroid/telephony/CbGeoUtils$Polygon$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/telephony/CbGeoUtils$Polygon;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/CbGeoUtils$Polygon;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CbGeoUtils$Polygon$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/CbGeoUtils$Polygon;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/telephony/CbGeoUtils$Polygon$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/CbGeoUtils$Polygon;

    check-cast p1, Landroid/telephony/CbGeoUtils$LatLng;

    invoke-static {v0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->$r8$lambda$vtFjAACcSnTisw_Y0SkM9UnSBn8(Landroid/telephony/CbGeoUtils$Polygon;Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object p1

    return-object p1
.end method
