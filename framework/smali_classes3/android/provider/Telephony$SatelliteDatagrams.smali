.class public final Landroid/provider/Telephony$SatelliteDatagrams;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SatelliteDatagrams"
.end annotation


# static fields
.field private static final ALL_COLUMNS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLUMN_DATAGRAM:Ljava/lang/String; = "datagram"

.field public static final COLUMN_UNIQUE_KEY_DATAGRAM_ID:Ljava/lang/String; = "datagram_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROVIDER_NAME:Ljava/lang/String; = "satellite"

.field public static final TABLE_NAME:Ljava/lang/String; = "incoming_datagrams"

.field private static final URL:Ljava/lang/String; = "content://satellite/incoming_datagrams"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 5215
    const-string v0, "content://satellite/incoming_datagrams"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$SatelliteDatagrams;->CONTENT_URI:Landroid/net/Uri;

    .line 5232
    const-string v0, "datagram_id"

    const-string v1, "datagram"

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$SatelliteDatagrams;->ALL_COLUMNS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllColumns()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5243
    sget-object v0, Landroid/provider/Telephony$SatelliteDatagrams;->ALL_COLUMNS:Ljava/util/List;

    return-object v0
.end method
