// headers for vips operations
// Mon 11 Jun 14:21:32 BST 2018
// this file is generated automatically, do not edit!

static void system( char * cmd_format , VOption *options = 0 ) ;
VImage add( VImage right , VOption *options = 0 )  const ;
VImage subtract( VImage right , VOption *options = 0 )  const ;
VImage multiply( VImage right , VOption *options = 0 )  const ;
VImage divide( VImage right , VOption *options = 0 )  const ;
VImage relational( VImage right , VipsOperationRelational relational , VOption *options = 0 )  const ;
VImage remainder( VImage right , VOption *options = 0 )  const ;
VImage boolean( VImage right , VipsOperationBoolean boolean , VOption *options = 0 )  const ;
VImage math2( VImage right , VipsOperationMath2 math2 , VOption *options = 0 )  const ;
VImage complex2( VImage right , VipsOperationComplex2 cmplx , VOption *options = 0 )  const ;
VImage complexform( VImage right , VOption *options = 0 )  const ;
static VImage sum( std::vector<VImage> in , VOption *options = 0 ) ;
VImage invert( VOption *options = 0 )  const ;
VImage linear( std::vector<double> a , std::vector<double> b , VOption *options = 0 )  const ;
VImage math( VipsOperationMath math , VOption *options = 0 )  const ;
VImage abs( VOption *options = 0 )  const ;
VImage sign( VOption *options = 0 )  const ;
VImage round( VipsOperationRound round , VOption *options = 0 )  const ;
VImage relational_const( VipsOperationRelational relational , std::vector<double> c , VOption *options = 0 )  const ;
VImage remainder_const( std::vector<double> c , VOption *options = 0 )  const ;
VImage boolean_const( VipsOperationBoolean boolean , std::vector<double> c , VOption *options = 0 )  const ;
VImage math2_const( VipsOperationMath2 math2 , std::vector<double> c , VOption *options = 0 )  const ;
VImage complex( VipsOperationComplex cmplx , VOption *options = 0 )  const ;
VImage complexget( VipsOperationComplexget get , VOption *options = 0 )  const ;
double avg( VOption *options = 0 )  const ;
double min( VOption *options = 0 )  const ;
double max( VOption *options = 0 )  const ;
double deviate( VOption *options = 0 )  const ;
VImage stats( VOption *options = 0 )  const ;
VImage hist_find( VOption *options = 0 )  const ;
VImage hist_find_ndim( VOption *options = 0 )  const ;
VImage hist_find_indexed( VImage index , VOption *options = 0 )  const ;
VImage hough_line( VOption *options = 0 )  const ;
VImage hough_circle( VOption *options = 0 )  const ;
VImage project( VImage * rows , VOption *options = 0 )  const ;
VImage profile( VImage * rows , VOption *options = 0 )  const ;
VImage measure( int h , int v , VOption *options = 0 )  const ;
std::vector<double> getpoint( int x , int y , VOption *options = 0 )  const ;
int find_trim( int * top , int * width , int * height , VOption *options = 0 )  const ;
VImage copy( VOption *options = 0 )  const ;
VImage tilecache( VOption *options = 0 )  const ;
VImage linecache( VOption *options = 0 )  const ;
VImage sequential( VOption *options = 0 )  const ;
VImage cache( VOption *options = 0 )  const ;
VImage embed( int x , int y , int width , int height , VOption *options = 0 )  const ;
VImage gravity( VipsCompassDirection direction , int width , int height , VOption *options = 0 )  const ;
VImage flip( VipsDirection direction , VOption *options = 0 )  const ;
VImage insert( VImage sub , int x , int y , VOption *options = 0 )  const ;
VImage join( VImage in2 , VipsDirection direction , VOption *options = 0 )  const ;
static VImage arrayjoin( std::vector<VImage> in , VOption *options = 0 ) ;
VImage extract_area( int left , int top , int width , int height , VOption *options = 0 )  const ;
VImage smartcrop( int width , int height , VOption *options = 0 )  const ;
VImage extract_band( int band , VOption *options = 0 )  const ;
static VImage bandjoin( std::vector<VImage> in , VOption *options = 0 ) ;
VImage bandjoin_const( std::vector<double> c , VOption *options = 0 )  const ;
static VImage bandrank( std::vector<VImage> in , VOption *options = 0 ) ;
VImage bandmean( VOption *options = 0 )  const ;
VImage bandbool( VipsOperationBoolean boolean , VOption *options = 0 )  const ;
VImage replicate( int across , int down , VOption *options = 0 )  const ;
VImage cast( VipsBandFormat format , VOption *options = 0 )  const ;
VImage rot( VipsAngle angle , VOption *options = 0 )  const ;
VImage rot45( VOption *options = 0 )  const ;
VImage autorot( VOption *options = 0 )  const ;
VImage ifthenelse( VImage in1 , VImage in2 , VOption *options = 0 )  const ;
VImage recomb( VImage m , VOption *options = 0 )  const ;
VImage bandfold( VOption *options = 0 )  const ;
VImage bandunfold( VOption *options = 0 )  const ;
VImage flatten( VOption *options = 0 )  const ;
VImage premultiply( VOption *options = 0 )  const ;
VImage unpremultiply( VOption *options = 0 )  const ;
VImage grid( int tile_height , int across , int down , VOption *options = 0 )  const ;
VImage transpose3d( VOption *options = 0 )  const ;
VImage scale( VOption *options = 0 )  const ;
VImage wrap( VOption *options = 0 )  const ;
VImage zoom( int xfac , int yfac , VOption *options = 0 )  const ;
VImage subsample( int xfac , int yfac , VOption *options = 0 )  const ;
VImage msb( VOption *options = 0 )  const ;
VImage byteswap( VOption *options = 0 )  const ;
VImage falsecolour( VOption *options = 0 )  const ;
VImage gamma( VOption *options = 0 )  const ;
static VImage composite( std::vector<VImage> in , std::vector<int> mode , VOption *options = 0 ) ;
VImage composite2( VImage overlay , VipsBlendMode mode , VOption *options = 0 )  const ;
static VImage black( int width , int height , VOption *options = 0 ) ;
static VImage gaussnoise( int width , int height , VOption *options = 0 ) ;
static VImage text( char * text , VOption *options = 0 ) ;
static VImage xyz( int width , int height , VOption *options = 0 ) ;
static VImage gaussmat( double sigma , double min_ampl , VOption *options = 0 ) ;
static VImage logmat( double sigma , double min_ampl , VOption *options = 0 ) ;
static VImage eye( int width , int height , VOption *options = 0 ) ;
static VImage grey( int width , int height , VOption *options = 0 ) ;
static VImage zone( int width , int height , VOption *options = 0 ) ;
static VImage sines( int width , int height , VOption *options = 0 ) ;
static VImage mask_ideal( int width , int height , double frequency_cutoff , VOption *options = 0 ) ;
static VImage mask_ideal_ring( int width , int height , double frequency_cutoff , double ringwidth , VOption *options = 0 ) ;
static VImage mask_ideal_band( int width , int height , double frequency_cutoff_x , double frequency_cutoff_y , double radius , VOption *options = 0 ) ;
static VImage mask_butterworth( int width , int height , double order , double frequency_cutoff , double amplitude_cutoff , VOption *options = 0 ) ;
static VImage mask_butterworth_ring( int width , int height , double order , double frequency_cutoff , double amplitude_cutoff , double ringwidth , VOption *options = 0 ) ;
static VImage mask_butterworth_band( int width , int height , double order , double frequency_cutoff_x , double frequency_cutoff_y , double radius , double amplitude_cutoff , VOption *options = 0 ) ;
static VImage mask_gaussian( int width , int height , double frequency_cutoff , double amplitude_cutoff , VOption *options = 0 ) ;
static VImage mask_gaussian_ring( int width , int height , double frequency_cutoff , double amplitude_cutoff , double ringwidth , VOption *options = 0 ) ;
static VImage mask_gaussian_band( int width , int height , double frequency_cutoff_x , double frequency_cutoff_y , double radius , double amplitude_cutoff , VOption *options = 0 ) ;
static VImage mask_fractal( int width , int height , double fractal_dimension , VOption *options = 0 ) ;
VImage buildlut( VOption *options = 0 )  const ;
VImage invertlut( VOption *options = 0 )  const ;
static VImage tonelut( VOption *options = 0 ) ;
static VImage identity( VOption *options = 0 ) ;
static VImage fractsurf( int width , int height , double fractal_dimension , VOption *options = 0 ) ;
static VImage worley( int width , int height , VOption *options = 0 ) ;
static VImage perlin( int width , int height , VOption *options = 0 ) ;
static VImage csvload( char * filename , VOption *options = 0 ) ;
static VImage matrixload( char * filename , VOption *options = 0 ) ;
static VImage rawload( char * filename , int width , int height , int bands , VOption *options = 0 ) ;
static VImage vipsload( char * filename , VOption *options = 0 ) ;
static VImage analyzeload( char * filename , VOption *options = 0 ) ;
static VImage ppmload( char * filename , VOption *options = 0 ) ;
static VImage radload( char * filename , VOption *options = 0 ) ;
static VImage pdfload( char * filename , VOption *options = 0 ) ;
static VImage pdfload_buffer( VipsBlob * buffer , VOption *options = 0 ) ;
static VImage svgload( char * filename , VOption *options = 0 ) ;
static VImage svgload_buffer( VipsBlob * buffer , VOption *options = 0 ) ;
static VImage gifload( char * filename , VOption *options = 0 ) ;
static VImage gifload_buffer( VipsBlob * buffer , VOption *options = 0 ) ;
static VImage pngload( char * filename , VOption *options = 0 ) ;
static VImage pngload_buffer( VipsBlob * buffer , VOption *options = 0 ) ;
static VImage matload( char * filename , VOption *options = 0 ) ;
static VImage jpegload( char * filename , VOption *options = 0 ) ;
static VImage jpegload_buffer( VipsBlob * buffer , VOption *options = 0 ) ;
static VImage webpload( char * filename , VOption *options = 0 ) ;
static VImage webpload_buffer( VipsBlob * buffer , VOption *options = 0 ) ;
static VImage tiffload( char * filename , VOption *options = 0 ) ;
static VImage tiffload_buffer( VipsBlob * buffer , VOption *options = 0 ) ;
static VImage openslideload( char * filename , VOption *options = 0 ) ;
static VImage magickload( char * filename , VOption *options = 0 ) ;
static VImage magickload_buffer( VipsBlob * buffer , VOption *options = 0 ) ;
static VImage fitsload( char * filename , VOption *options = 0 ) ;
static VImage openexrload( char * filename , VOption *options = 0 ) ;
void csvsave( char * filename , VOption *options = 0 )  const ;
void matrixsave( char * filename , VOption *options = 0 )  const ;
void matrixprint( VOption *options = 0 )  const ;
void rawsave( char * filename , VOption *options = 0 )  const ;
void rawsave_fd( int fd , VOption *options = 0 )  const ;
void vipssave( char * filename , VOption *options = 0 )  const ;
void ppmsave( char * filename , VOption *options = 0 )  const ;
void radsave( char * filename , VOption *options = 0 )  const ;
VipsBlob * radsave_buffer( VOption *options = 0 )  const ;
void dzsave( char * filename , VOption *options = 0 )  const ;
VipsBlob * dzsave_buffer( VOption *options = 0 )  const ;
void pngsave( char * filename , VOption *options = 0 )  const ;
VipsBlob * pngsave_buffer( VOption *options = 0 )  const ;
void jpegsave( char * filename , VOption *options = 0 )  const ;
VipsBlob * jpegsave_buffer( VOption *options = 0 )  const ;
void jpegsave_mime( VOption *options = 0 )  const ;
void webpsave( char * filename , VOption *options = 0 )  const ;
VipsBlob * webpsave_buffer( VOption *options = 0 )  const ;
void tiffsave( char * filename , VOption *options = 0 )  const ;
VipsBlob * tiffsave_buffer( VOption *options = 0 )  const ;
void magicksave( char * filename , VOption *options = 0 )  const ;
VipsBlob * magicksave_buffer( VOption *options = 0 )  const ;
void fitssave( char * filename , VOption *options = 0 )  const ;
static VImage thumbnail( char * filename , int width , VOption *options = 0 ) ;
static VImage thumbnail_buffer( VipsBlob * buffer , int width , VOption *options = 0 ) ;
VImage thumbnail_image( int width , VOption *options = 0 )  const ;
VImage mapim( VImage index , VOption *options = 0 )  const ;
VImage shrink( double hshrink , double vshrink , VOption *options = 0 )  const ;
VImage shrinkh( int hshrink , VOption *options = 0 )  const ;
VImage shrinkv( int vshrink , VOption *options = 0 )  const ;
VImage reduceh( double hshrink , VOption *options = 0 )  const ;
VImage reducev( double vshrink , VOption *options = 0 )  const ;
VImage reduce( double hshrink , double vshrink , VOption *options = 0 )  const ;
VImage quadratic( VImage coeff , VOption *options = 0 )  const ;
VImage affine( std::vector<double> matrix , VOption *options = 0 )  const ;
VImage similarity( VOption *options = 0 )  const ;
VImage rotate( double angle , VOption *options = 0 )  const ;
VImage resize( double scale , VOption *options = 0 )  const ;
VImage colourspace( VipsInterpretation space , VOption *options = 0 )  const ;
VImage Lab2XYZ( VOption *options = 0 )  const ;
VImage XYZ2Lab( VOption *options = 0 )  const ;
VImage Lab2LCh( VOption *options = 0 )  const ;
VImage LCh2Lab( VOption *options = 0 )  const ;
VImage LCh2CMC( VOption *options = 0 )  const ;
VImage CMC2LCh( VOption *options = 0 )  const ;
VImage XYZ2Yxy( VOption *options = 0 )  const ;
VImage Yxy2XYZ( VOption *options = 0 )  const ;
VImage scRGB2XYZ( VOption *options = 0 )  const ;
VImage XYZ2scRGB( VOption *options = 0 )  const ;
VImage LabQ2Lab( VOption *options = 0 )  const ;
VImage Lab2LabQ( VOption *options = 0 )  const ;
VImage LabQ2LabS( VOption *options = 0 )  const ;
VImage LabS2LabQ( VOption *options = 0 )  const ;
VImage LabS2Lab( VOption *options = 0 )  const ;
VImage Lab2LabS( VOption *options = 0 )  const ;
VImage rad2float( VOption *options = 0 )  const ;
VImage float2rad( VOption *options = 0 )  const ;
VImage LabQ2sRGB( VOption *options = 0 )  const ;
VImage sRGB2HSV( VOption *options = 0 )  const ;
VImage HSV2sRGB( VOption *options = 0 )  const ;
VImage icc_import( VOption *options = 0 )  const ;
VImage icc_export( VOption *options = 0 )  const ;
VImage icc_transform( char * output_profile , VOption *options = 0 )  const ;
VImage dE76( VImage right , VOption *options = 0 )  const ;
VImage dE00( VImage right , VOption *options = 0 )  const ;
VImage dECMC( VImage right , VOption *options = 0 )  const ;
VImage sRGB2scRGB( VOption *options = 0 )  const ;
VImage scRGB2BW( VOption *options = 0 )  const ;
VImage scRGB2sRGB( VOption *options = 0 )  const ;
VImage maplut( VImage lut , VOption *options = 0 )  const ;
int percent( double percent , VOption *options = 0 )  const ;
VImage stdif( int width , int height , VOption *options = 0 )  const ;
VImage hist_cum( VOption *options = 0 )  const ;
VImage hist_match( VImage ref , VOption *options = 0 )  const ;
VImage hist_norm( VOption *options = 0 )  const ;
VImage hist_equal( VOption *options = 0 )  const ;
VImage hist_plot( VOption *options = 0 )  const ;
VImage hist_local( int width , int height , VOption *options = 0 )  const ;
bool hist_ismonotonic( VOption *options = 0 )  const ;
double hist_entropy( VOption *options = 0 )  const ;
VImage conv( VImage mask , VOption *options = 0 )  const ;
VImage conva( VImage mask , VOption *options = 0 )  const ;
VImage convf( VImage mask , VOption *options = 0 )  const ;
VImage convi( VImage mask , VOption *options = 0 )  const ;
VImage compass( VImage mask , VOption *options = 0 )  const ;
VImage convsep( VImage mask , VOption *options = 0 )  const ;
VImage convasep( VImage mask , VOption *options = 0 )  const ;
VImage fastcor( VImage ref , VOption *options = 0 )  const ;
VImage spcor( VImage ref , VOption *options = 0 )  const ;
VImage sharpen( VOption *options = 0 )  const ;
VImage gaussblur( double sigma , VOption *options = 0 )  const ;
VImage canny( VOption *options = 0 )  const ;
VImage sobel( VOption *options = 0 )  const ;
VImage fwfft( VOption *options = 0 )  const ;
VImage invfft( VOption *options = 0 )  const ;
VImage freqmult( VImage mask , VOption *options = 0 )  const ;
VImage spectrum( VOption *options = 0 )  const ;
VImage phasecor( VImage in2 , VOption *options = 0 )  const ;
VImage morph( VImage mask , VipsOperationMorphology morph , VOption *options = 0 )  const ;
VImage rank( int width , int height , int index , VOption *options = 0 )  const ;
double countlines( VipsDirection direction , VOption *options = 0 )  const ;
VImage labelregions( VOption *options = 0 )  const ;
VImage fill_nearest( VOption *options = 0 )  const ;
void draw_rect( std::vector<double> ink , int left , int top , int width , int height , VOption *options = 0 )  const ;
void draw_mask( std::vector<double> ink , VImage mask , int x , int y , VOption *options = 0 )  const ;
void draw_line( std::vector<double> ink , int x1 , int y1 , int x2 , int y2 , VOption *options = 0 )  const ;
void draw_circle( std::vector<double> ink , int cx , int cy , int radius , VOption *options = 0 )  const ;
void draw_flood( std::vector<double> ink , int x , int y , VOption *options = 0 )  const ;
void draw_image( VImage sub , int x , int y , VOption *options = 0 )  const ;
void draw_smudge( int left , int top , int width , int height , VOption *options = 0 )  const ;
VImage merge( VImage sec , VipsDirection direction , int dx , int dy , VOption *options = 0 )  const ;
VImage mosaic( VImage sec , VipsDirection direction , int xref , int yref , int xsec , int ysec , VOption *options = 0 )  const ;
VImage mosaic1( VImage sec , VipsDirection direction , int xr1 , int yr1 , int xs1 , int ys1 , int xr2 , int yr2 , int xs2 , int ys2 , VOption *options = 0 )  const ;
VImage match( VImage sec , int xr1 , int yr1 , int xs1 , int ys1 , int xr2 , int yr2 , int xs2 , int ys2 , VOption *options = 0 )  const ;
VImage globalbalance( VOption *options = 0 )  const ;
