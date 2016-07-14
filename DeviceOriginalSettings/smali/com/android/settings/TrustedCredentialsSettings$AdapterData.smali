.class Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

.field private final mCertHoldersByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTab:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$Tab;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;)V
    .locals 1
    .param p2, "tab"    # Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$Tab;
    .param p3, "adapter"    # Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;->this$0:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    .line 412
    iput-object p3, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .line 413
    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$Tab;

    .line 414
    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$Tab;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .param p4, "x3"    # Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$1;

    .prologue
    .line 405
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;-><init>(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$Tab;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;)Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;->mTab:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;)Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    return-object v0
.end method


# virtual methods
.method public remove(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 3
    .param p1, "certHolder"    # Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 515
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    iget v2, p1, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 517
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 521
    .end local v0    # "certs":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;>;"
    :cond_0
    return-void
.end method
