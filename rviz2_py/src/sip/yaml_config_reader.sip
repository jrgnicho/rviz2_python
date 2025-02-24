namespace rviz_common
{

class YamlConfigReader /NoDefaultCtors/
{
%TypeHeaderCode
#define ROS_PACKAGE_NAME "rviz2_py"
#include <rviz_common/yaml_config_reader.hpp>
%End

public:
  /** @brief Constructor.  YamlConfigReader begins in an error state until a file or data string has been read successfully. */
  YamlConfigReader();

  /** @brief Read config data from a file.  This potentially changes the return value sof error(), statusMessage(), and config(). */
  void readFile( rviz_common::Config& config, const QString& filename );

  /** @brief Read config data from a string.  This potentially changes the return value sof error(), statusMessage(), and config(). */
  void readString( rviz_common::Config& config, const QString& data, const QString& filename = "data string" );

  /** @brief Read config data from a std::istream.  This potentially changes the return value sof error(), statusMessage(), and config(). */
//  void readStream( rviz_common::Config& config, std::istream& in, const QString& filename = "data stream" );

  /** @brief Return true if the latest readFile() or readString() call had an error. */
  bool error();

  /** @brief Return an error message if the latest read call had an
   * error, or the empty string if there was no error. */
  QString errorMessage();
};

};