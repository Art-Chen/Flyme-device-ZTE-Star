.class Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;->addTab(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$2;->val$adapter:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$2;->this$0:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$2;->val$adapter:Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1, p3}, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->getItem(I)Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    # invokes: Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;->showCertDialog(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;->access$800(Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings;Lcom/flyme/DeviceOriginalSettings/TrustedCredentialsSettings$CertHolder;)V

    .line 240
    return-void
.end method
