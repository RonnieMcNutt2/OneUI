.class Lcom/sec/android/iaft/IAFDHCDatabase$IAFDHCDatabaseHolder;
.super Ljava/lang/Object;
.source "IAFDHCDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDHCDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IAFDHCDatabaseHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/iaft/IAFDHCDatabase;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDHCDatabase;
    .registers 1

    sget-object v0, Lcom/sec/android/iaft/IAFDHCDatabase$IAFDHCDatabaseHolder;->INSTANCE:Lcom/sec/android/iaft/IAFDHCDatabase;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lcom/sec/android/iaft/IAFDHCDatabase;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/iaft/IAFDHCDatabase;-><init>(Lcom/sec/android/iaft/IAFDHCDatabase-IA;)V

    sput-object v0, Lcom/sec/android/iaft/IAFDHCDatabase$IAFDHCDatabaseHolder;->INSTANCE:Lcom/sec/android/iaft/IAFDHCDatabase;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
