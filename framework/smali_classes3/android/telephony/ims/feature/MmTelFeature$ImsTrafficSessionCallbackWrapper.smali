.class public Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
.super Ljava/lang/Object;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsTrafficSessionCallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;
    }
.end annotation


# static fields
.field public static final INVALID_TOKEN:I = -0x1

.field private static final MAX_TOKEN:I = 0x10000

.field private static final sTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

.field private mImsTrafficSessionCallback:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

.field private mToken:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 877
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->sTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    .line 882
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mToken:I

    .line 887
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mImsTrafficSessionCallback:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    .line 888
    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;-><init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V

    return-void
.end method

.method private static generateToken()I
    .registers 3

    .line 977
    sget-object v0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->sTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 978
    .local v1, "token":I
    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_e

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 979
    :cond_e
    return v1
.end method


# virtual methods
.method final getCallbackBinder()Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;
    .registers 2

    .line 957
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    return-object v0
.end method

.method final getToken()I
    .registers 2

    .line 964
    iget v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mToken:I

    return v0
.end method

.method final reset()V
    .registers 2

    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    .line 973
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mToken:I

    .line 974
    return-void
.end method

.method final update(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 897
    if-eqz p1, :cond_1a

    .line 902
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    if-nez v0, :cond_16

    .line 904
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mImsTrafficSessionCallback:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;-><init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    .line 906
    invoke-static {}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->generateToken()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mToken:I

    goto :goto_19

    .line 909
    :cond_16
    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->update(Ljava/util/concurrent/Executor;)V

    .line 911
    :goto_19
    return-void

    .line 898
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsTrafficSessionCallback Executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
