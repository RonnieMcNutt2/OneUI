.class Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;
.super Ljava/lang/Object;
.source "QuickAccessWalletServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileServiceMetadata"
.end annotation


# instance fields
.field private final mTileIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTileIcon(Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;->mTileIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "tileIcon"    # Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;->mTileIcon:Landroid/graphics/drawable/Drawable;

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/quickaccesswallet/QuickAccessWalletServiceInfo$TileServiceMetadata;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
