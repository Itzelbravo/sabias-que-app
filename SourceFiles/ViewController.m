// ViewController.m

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray *cienciaDatos;
@property (strong, nonatomic) NSArray *historiaDatos;
@property (strong, nonatomic) NSArray *naturalezaDatos;
@property (assign, nonatomic) NSInteger indiceActual;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.cienciaDatos = @[
        @"¿Sabías que una cucharada de estrella de neutrones pesaría mil millones de toneladas?",
        @"¿Sabías que el agua caliente puede congelarse más rápido que el agua fría bajo ciertas condiciones?"
    ];

    self.historiaDatos = @[
        @"¿Sabías que Cleopatra vivió más cerca del nacimiento de Pizza Hut que de la construcción de las pirámides?",
        @"¿Sabías que Napoleón fue atacado por conejos durante una cacería planificada por él mismo?"
    ];

    self.naturalezaDatos = @[
        @"¿Sabías que los árboles pueden comunicarse entre ellos a través de una red subterránea de hongos?",
        @"¿Sabías que los flamencos rosados obtienen su color de los alimentos que consumen?"
    ];

    self.indiceActual = 0;
}

- (IBAction)mostrarDatoCurioso:(id)sender {
    NSInteger categoriaSeleccionada = self.selectorCategoria.selectedSegmentIndex;

    NSArray *datos;

    switch (categoriaSeleccionada) {
        case 0:
            datos = self.cienciaDatos;
            break;
        case 1:
            datos = self.historiaDatos;
            break;
        case 2:
            datos = self.naturalezaDatos;
            break;
        default:
            datos = @[@"Selecciona una categoría para ver un dato curioso."];
            break;
    }

    self.datoCuriosoLabel.text = datos[self.indiceActual % datos.count];
    self.indiceActual++;
}

@end
